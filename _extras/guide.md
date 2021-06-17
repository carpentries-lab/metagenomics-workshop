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

## Technical tips and tricks

We recommend that you always start a new teaching session by changing the prompt in your terminal with `PS1='\W\ $ '`. This way you ensure that you have an environment similar to the one the attendees have and you do not get confused with which is your working directory. 

The parent directory of everything that we will be using during the lesson is `/home/dcuser/dc_workshop`. At the beginning of the workshop make sure it looks like this:

~~~
$ tree dc_workshop
~~~
{: .bash} 
~~~
dc_workshop
├── data
│   └── untrimmed_fastq
│       ├── JC1A_R1.fastq.gz
│       ├── JC1A_R2.fastq.gz
│       ├── JP4D_R1.fastq.gz
│       └── JP4D_R2.fastq.gz
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

#### Installation

This workshop is designed to be run on pre-imaged Amazon Web Services (AWS) instances. See the 
[Setup page](https://nselem.github.io/metagenomics-workshop/setup.html) for complete setup instructions. If you are
teaching these lessons, and would like an AWS instance to practice on, please contact [team@carpentries.org](mailto: team@carpentries.org).

## Common problems

This workshop introduces an analysis pipeline, where each step in that pipeline is dependent on the previous step.
If a learner gets behind, or one of the steps doesn't work for them, they may not be able to catch up with the rest of the class. 
To help ensure that all learners are able to work through the whole process, we provide the solution files. This includes all
of the output files for each step in the data processing pipeline, as well as the scripts that the learners write collaboratively
with the Instructors throughout the workshop. These files are available on the hidden `.backup_dc_workshop`directory.

Make sure to tell your helpers about the `.backup_dc_workshop` directory so that they can use these resources to help
learners catch up during the workshop. 



