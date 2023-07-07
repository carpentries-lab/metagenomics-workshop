---
layout: page
title: "Instructor Notes"
---

## Workshop Structure

This Workshop is devided in 4 lessons: 
1. Project organization and management.
2. Introduction to the command line.
3. Introduction to R for metagenomics.
4. Data processing and visualization for metagenomics. 

Here you can found instructor notes for all of those lessons.

# General notes for the whole workshop

## Technical tips and tricks

The parent directory of everything that we will be using during the lesson is `/home/dcuser/dc_workshop`. At the beginning of the workshop make sure it looks like this:

~~~
$ tree -a dc_workshop
~~~
{: .bash} 
~~~
dc_workshop
├── .backup_dc_workshop
│   ├── data
│   │   ├── trimmed_fastq
│   │   │   ├── JC1A_R1.trim.fastq.gz
│   │   │   ├── JC1A_R1un.trim.fastq.gz
│   │   │   ├── JC1A_R2.trim.fastq.gz
│   │   │   ├── JC1A_R2un.trim.fastq.gz
│   │   │   ├── JP4D_R1.trim.fastq.gz
│   │   │   ├── JP4D_R1un.trim.fastq.gz
│   │   │   ├── JP4D_R2.trim.fastq.gz
│   │   │   └── JP4D_R2un.trim.fastq.gz
│   │   └── untrimmed_fastq
│   │       ├── JC1A_R1.fastq.gz
│   │       ├── JC1A_R2.fastq.gz
│   │       ├── JP4D_R1.fastq.gz
│   │       ├── JP4D_R2.fastq.gz
│   │       └── TruSeq3-PE.fa
│   ├── docs
│   │   └── fastqc_summaries.txt
│   ├── .hidden
│   │   └── youfoundit.txt
│   ├── mags
│   │   ├── CHECKM
│   │   │   ├── Bacteria.ms
│   │   │   └── quality_JP4D.tsv
│   │   ├── JP4D_contigs.fasta
│   │   └── MAXBIN
│   │       ├── JP4D.001.fasta
│   │       ├── JP4D.002.fasta
│   │       ├── JP4D.003.fasta
│   │       ├── JP4D.004.fasta
│   │       ├── JP4D.log
│   │       └── JP4D.summary
│   ├── results
│   │   ├── assembly_JC1A
│   │   │   ├── JC1A_contigs.fasta
│   │   │   └── JC1A_scaffolds.fasta
│   │   └── fastqc_untrimmed_reads
│   │       ├── JC1A_R1_fastqc.html
│   │       ├── JC1A_R1_fastqc.zip
│   │       ├── JC1A_R2_fastqc.html
│   │       ├── JC1A_R2_fastqc.zip
│   │       ├── JP4D_R1_fastqc.html
│   │       ├── JP4D_R1_fastqc.zip
│   │       ├── JP4D_R2_fastqc.html
│   │       └── JP4D_R2_fastqc.zip
│   └── taxonomy
│       ├── cuatroc.biom
│       ├── JC1A.kraken
│       ├── JC1A.report
│       ├── JP41.report
│       ├── JP4D.kraken
│       ├── JP4D.report
│       └── mags_taxonomy
│           ├── JP4D.001.kraken
│           ├── JP4D.001.krona.input
│           ├── JP4D.001.krona.out.html
│           └── JP4D.001.report
├── data
│   └── untrimmed_fastq
│       ├── JC1A_R1.fastq.gz
│       ├── JC1A_R2.fastq.gz
│       ├── JP4D_R1.fastq.gz
│       ├── JP4D_R2.fastq.gz
│       └── TruSeq3-PE.fa
├── .hidden
│   └── youfoundit.txt
├── mags
│   └── JP4D_contigs.fasta
└── taxonomy
    ├── JC1A.kraken
    ├── JC1A.report
    ├── JP41.report
    ├── JP4D.kraken
    ├── JP4D.report
    └── mags_taxonomy
        ├── JP4D.001.kraken
        └── JP4D.001.report

~~~
{: .output} 

Here you can see there is a **hidden backup directory** called `.backup_dc_workshop`. It has all the relevant 
resulting files. If a participant is not able to generate a file needed to continue with the lesson, 
they can take it from here.

## Installation

This workshop is designed to be run on pre-imaged Amazon Web Services (AWS) instances. See the 
[Setup page](https://carpentries-lab.github.io/metagenomics-workshop/setup.html) for complete setup instructions. If you are
teaching these lessons, and would like an AWS instance to practice on, please contact [team@carpentries.org](mailto: team@carpentries.org).

## Common problems
This workshop introduces an analysis pipeline, where each step in 
that pipeline is dependent on the previous step. If a learner gets behind, 
or one of the steps doesn't work for them, they may not be able to 
catch up with the rest of the class. To help ensure that all learners 
are able to work through the whole process, we provide the solution files. 
This includes all of the output files for each step in the data processing 
pipeline, as well as the scripts that the learners write collaboratively
with the Instructors throughout the workshop. These files are available on 
the hidden `.backup_dc_workshop`directory.

Make sure to tell your helpers about the `.backup_dc_workshop` directory 
so that they can use these resources to help
learners catch up during the workshop. 


# Notes for the Project Organization and Management for Metagenomics lesson

## Lesson motivation and learning objectives

The purpose of this lesson is *not* to teach how to do data analysis in spreadsheets,
but to teach good data organization and how to do some data cleaning and 
quality control in a spreadsheet program.

## Lesson design

#### [Data tidiness](https://carpentries-lab.github.io/metagenomics-organization/01-tidiness/index.html)

* Introduce that we're teaching data organization, and that we're using
spreadsheets, because most people do data entry in spreadsheets or 
have data in spreadsheets.
* Emphasize that we are teaching good practice in data organization and that
this is the foundation of their research practice. Without organized and clean
data, it will be difficult for them to apply the things we're teaching in the
rest of the workshop to their data.
* Much of their lives as a researcher will be spent on this
 'data wrangling' stage, but some of it can be prevented with good strategies 
 for data collection up front.
* Tell that we're not teaching data analysis or plotting in spreadsheets, because it's
very manual and also not reproducible. That's why we're teaching bash shell scripting!
* Now let's talk about spreadsheets, and when we say spreadsheets, we mean any program that
does spreadsheets like Excel, LibreOffice, OpenOffice. Most learners are probably using Excel.
* Ask the audience any things they've accidentally done in spreadsheets. Talk about an example 
of your own, like that you accidentally sorted only a single column and not the rest.
of the data in the spreadsheet. What are the pain points!?
* As people answer, highlight some of these issues with spreadsheets.
* Go through the point about keeping track of your steps and keeping raw data raw.
* Go through the cardinal rule of spreadsheets about columns, rows and cells.
* Hand them a messy data file and have them pair up and work together to clean up the data.

#### [Planning for NGS projects]([../02-project-planning/](https://carpentries-lab.github.io/metagenomics-organization/02-project-planning/index.html))

* This episode depends on learners discussing exercises with one another. 
Be sure to give plenty of time for this discussion.

#### [Examining Data on the NCBI SRA Database](https://carpentries-lab.github.io/metagenomics-organization/03-ncbi-sra/index.html)

* Learners should *not* actually download the ENA files in the "Downloading a few sequencing files: EMBL-EBI" section. 

#### Concluding points

* Now your data is organized so that a computer can read and understand it. This
lets you use the full power of the computer for your analyses as we'll see in the
rest of the workshop. 

## Working with participants' level of expertise

Learners may be taking this lesson for many reasons - they may be just thinking of 
maybe doing a sequencing experiment, they may be trying to analyse public data, 
they may have already generated their own data, they may be speculatively acquiring new skills.

You should feel free to "read the room", and it can be helpful to ask more specifics in a pre-workshop survey.

#### [Data tidiness]([../01-tidiness/](https://carpentries-lab.github.io/metagenomics-organization/01-tidiness/index.html))

Discussion 1, "What kinds of data and information have you generated before you sent your DNA/RNA off for sequencing?" can go very differently depending on the participants' background. Many instructors make adjustments to this section, and they should, depending on the learners. 

Some instructors have succeeded in adding ice-breaker questions and more on scientific background to discussion 1, such as:

* What's your name? 
* What kind of sequencing data are you collecting? 
* What question is your experiment answering? 
* What kinds of data and information have you generated before you sent your DNA/RNA off for sequencing?

This had some positive points:

* instructors got to see the range of projects being worked on (metagenomics, RNA-seq, DNA-seq, etc).
* we had a good discussion about linked metadata, e.g. a plant scientist also takes photos of their plants, an ecologist has site sampling data.
* learners got to share lessons they'd learned.
* for some learners, it may have been the first time they'd thought about it.
* it only added 5 minutes.

The drawback:
* only about 1/2 of learners got to the point of talking about file types of that data.

It could be more efficient to ask these questions in the pre-workshop survey, then present the range of answers during the class. It can also be helpful for instructors and helpers to share what they work on.

## Technical tips and tricks

Provide information on setting up your environment for learners to view your 
live coding (increasing text size, changing text color, etc), as well as 
general recommendations for working with coding tools to best suit the 
learning environment.

## Common problems

#### Excel looks and acts different on different operating systems

The main challenge with this lesson is that Excel looks very different and how you
do things is even different between Mac and PC, and between different versions of
Excel. So, the presenter's environment will only be the same as some of the learners. 

We need better notes and screenshots of how things work on both Mac and PC. But we
likely won't be able to cover all the different versions of Excel. 

If you have a helper who has more experience with the other OS than you, it would be good
to prepare them to help with this lesson and tell people how to do things in the other OS.

#### People are not interactive or responsive on the exercises

This lesson depends on people working on the exercise and responding with things
that are fixed. If your audience is reluctant to participate, start out with
some things on your own, or ask a helper for their answers. This generally gets
even a reluctant audience started. 

## Reference

This Instructor notes are based on the [corresponding page](https://datacarpentry.org/organization-genomics/guide/index.html) in the Project Organization and Management for Genomics lesson.


# Notes for the Introduction to the Command Line for Metagenomics lesson

## Lesson motivation and learning objectives

Many researchers making the transition into genomics research (whether from another field or as their first research project) have
not had prior experience with command-line tools. They may quickly run into situations in which they need to use command-line tools
either because there is no good alternative for the type of analysis they want to do or because they have so many data files that doing 
things manually on individual files is unfeasible. 

This lesson will introduce learners to fundamental skills needed for working with their computers through a command-line interface (using
the bash shell). They will learn how to navigate their file system, computationally manipulate their files (e.g. copying, moving, renaming), search files, redirect output and write shell scripts. By the end of the lesson, learners will be prepared to move on to using more advanced bioinformatics command line tools (see the lesson on [Data processing and visualization for metagenomics](https://carpentries-incubator.github.io/metagenomics/)).

## Lesson design

This lesson is meant to be taught in its entirety. For novice learners, schedule around 4 hours for this lesson. If your learners are 
already somewhat familiar with the bash shell, the earlier episodes can be condensed. 

#### Redirection episode
Even when the output of `grep -B1 -A2 NNNNNNNNNN JC1A_R2.fastq > bad_reads.txt`  is a FastQ file, the output is stored in .txt because later in the episode, the instruction `grep -B1 -A2 NNNNNNNNNN *.fastq >> bad_reads.txt` would rise a warning and unintended consequences if the file was `bad_reads.fastq`.  

## Technical tips and tricks

#### Command Prompt Editing

Instructors might find it helpful to shorten their command prompt to allow better visibility of the commands they are typing, particularly if using the AMI.  This is because the prompt will contain additional information including the username and login for the instance, as well as filesystem location. This is especially useful when teaching the material online, as many learners may be splitting their screens and text wrapping may make the commands more difficult to identify if the prompt takes up a lot of space.

In order to edit your command prompt, type `PS1='\W\ $ '` into your shell and press enter. This will produce the simple "dollar space" prompt visible in the lesson content.  

In order to reset the command prompt, type `source .bashrc` in order to source the bash profile, or type `PS1="\u@\h:\w $ "` in order to set the prompt to show username, "@", hostname, ":", and current working directory (ie. the user's current location within the filesystem). 

NOTE: Editing the prompt is discussed in [episode 01 - Introducing the Shell](https://carpentries-incubator.github.io/shell-metagenomics/01-introduction/index.html) under the 'Navigating your file system' section. This explains how to edit the prompt via `PS1='\W\ $ '` as here, so it would perhaps be best to *start* the lesson with the *default* prompt (as all the learners will and they can see that their screen will reassuringly match the instructor's screen at this point), and then instructors can choose to edit their prompt and talk through how they're doing that for learners' benefit at this section, or the instructor can just make the change early in the lesson for the visibility benefit, and explain to learners that they can find out how to do this in the lesson materials. 

Resetting the command prompt is not currently included in the lesson materials, so it might be useful to be familiar with this beforehand in case of learners' questions.

## Common problems

Learners will work through an Amazon Web Service (AWS) instance for this lesson. The workshop coordinator will set up AWS instances for 
your workshop a few days ahead of time. Put the links for all instances on your workshop Etherpad and have learners put their name next
to the instance they will use. This prevents learners from accidentally messing up another learner's filesystem.

The workshop coordinator usually sets up more AWS instances than needed for the registered learners. 
If a learner accidentally deletes or overwrites data files, you can have them change to a different AWS instance.

## Reference

This Instructor notes are based on the [corresponding page](https://datacarpentry.org/shell-genomics/guide/index.html) in the Introduction to the Command Line for Genomics lesson.

# Notes for the Introduction to R for Metagenomics lesson

We recommend taking a survey about the experience in coding and programming languages of the participants before preparing for the workshop. If the participants already know R (or even Python), this lesson may be skipped.

# Notes for the Data processing and visualization for metagenomics lesson

## About the Data
Throughout the lesson only 2 samples are used, but for the part of making the beta diversity graph it needs 
to be 3. That is why there are 3 Kraken reports available on the data provided. When downloading the reports 
in the Taxonomic Assignment episode, before the Pavian part, the 3 reports will be downloaded, although only 2
are used for that part.

## Technical tips and tricks

Images can be zoomed in by clicking on them to show them more clearly while explaining. But you need to click on the backwards arrow 
of the browser to return to the episode.

## Plots when using CCM UNAM server  
The National Automous University of Mexico, in its Center for Mathematical Sciences has available upon request a learning server for this lesson. When using this server, plots are not displayed directly on R studio. To see the plots, they must be saved with the following instructions: 

- ggplot and other plots  
    `pdf("plot_abundances.pdf",width = 15, height = 5)`  
        `plot (your plot ...)`  
        `ggplot (your plot...)`  
    `dev.off()`  

Particularly when graphics were generated with ggplot you can use `ggsave` function to save figures in svg, png or jpg format.  
  `myplot<-ggplot2(....)`  
  `ggsave(file "~/myplot.png", myplot) `   
  
# Improving the workshop

If you give this workshop and find more recommendations that can be useful to other instructors please make a **pull request** to [this page](https://github.com/carpentries-incubator/metagenomics-workshop/blob/gh-pages/_extras/guide.md).
