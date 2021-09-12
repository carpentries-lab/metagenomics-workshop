---
title: 'Software Carpentry metagenomic workshop'
tags:
  - Shotgun Metagenomics
  - bash
  - R
  - data processing 
  - visualization
authors:
  - name: Diego Garfias-Gallegos
    affiliation: 1
  - name: Claudia Zirión-Martínez
    affiliation: 1
  - name:  Tania Vanessa Arellano-Fernandez
    affiliation: "3, 6"
    - name: Aarón Espinosa-Jaime
    affiliation: 6
  - name: Edder D Bustos-Díaz
    affiliation: 2
  - name:  José Abel Lovaco-Flores
    affiliation: "4, 6"
  - name: J Abraham Avelar-Rivas
    affiliation: "3, 4"
  - name: Nelly Sélem-Mojica
    orcid: 0000-0003-1697-3862
    affiliation: "4, 5" # (Multiple affiliations must be quoted)
affiliations:
 - name: Laboratorio de Genómica Ecológica y Evolutiva, Langebio, Cinvestav, México.
   index: 1
 - name: Laboratorio de Evolución de la Diversidad Metabólica, Langebio, Cinvestav, México.  
   index: 2
 - name: Laboratorio de Sistemas Genéticos, Langebio, Cinvestav, México. 
   index: 3
 - name: BetterLab - C3. Irapuato, México.  
   index: 4
 - name: Centro de Ciencias Matemáticas. UNAM, México.
   index: 5
 - name:Escuela Nacional de Estudios Superiores, Unidad León, UNAM, México.
   index: 6
   
date: 08 July 2021
bibliography: paper.bib

# Optional fields if submitting to a AAS journal too, see this blog post:
# https://blog.joss.theoj.org/2018/12/a-new-collaboration-with-aas-publishing
aas-doi: 10.3847/xxxxx <- update this with the DOI from AAS once you know it.
aas-journal: Astrophysical Journal <- The name of the AAS journal.
---

# Summary
Metagenomic analyses aim to explore the genomic diversity of communities in specific habitats by processing their DNA-sequencing data with specialized bioinformatics tools, which often require previous coding experience. Furthermore, beginners can struggle to build a pipeline that goes from raw data to valuable biological insights. The Carpentries platform hosts worldwide-used open lessons to analyze specialized datasets for beginners; nevertheless, a complete metagenomics guide was missing. We created a Metagenomics curriculum on The Carpentries’ incubator comprising a coding introduction, allowing learners to run commands with the software needed for completing metagenomics analyses. This curriculum taught in three 16-hour online workshops improved the content and exercises. We expect to continuously enhance this lesson, which we hope is helpful for new instructors in the field and a guide for metagenomic analyses from scratch.
  
# Statement of Need  
Bioinformatic tools are nowadays used to understand biological systems. Open lessons for general coding languages and specialized topics such as genomics, ecology, and even metagenomics are already available [@darling_data_2019], [@noauthor_lessons_nodate], [@kruchten_curricular_2020-1]. Nevertheless, a complete guide for shotgun metagenomics, assuming no prior knowledge of coding and provided hardware and software solutions, was missing.  We introduce a curriculum that teaches bash and R programming in a pre-installed remote server to fill this gap by offering lessons to conduct a comprehensive metagenomics workflow. Open lessons for general coding languages and specialized topics such as genomics, ecology, and even metagenomics are already available [@darling_data_2019], [@noauthor_lessons_nodate], [@kruchten_curricular_2020-1]. 


[@Binney:2008]. The combination of speed,
design, and support for Astropy functionality in ``Gala`` will enable exciting
scientific explorations of forthcoming data releases from the *Gaia* mission
[@gaia] by students and experts alike.

# Content and Learning Objectives

The curriculum comprises four lessons (Fig 1). It does not assume previous experience in coding but expects that students understand basic concepts of molecular biology and ecology. The first two lessons are adapted from the Genomics’ Data Carpentry curriculum and introduce planning and organizing metagenomics projects and coding in bash [@becker_datacarpentrygenomics-workshop_2019]. The third part includes a brief introduction to R, and the fourth lesson teaches a complete shotgun metagenomics workflow using public data [@okie_genomic_2020]. 


# Learning objectives

Project organization and management for metagenomics
- Plan, structure, organize and document metagenomics data, metadata, and bioinformatics workflow.
- Access to public data on the NCBI sequence read archive (SRA) database.

Introduction to the command-line for metagenomics 
- Identify the benefits of the command line. 
- Navigate the file system, create, copy, move, and remove files and directories.
- Work with files.
- Combine commands and automate repetitive tasks.
- Make an organized file system for a bioinformatics project.

Introduction to R for metagenomics
- Familiarize with Rstudio and R functionality.
- Distinguish the different data types. 
- Create and manipulate data-frames.
- Use and find help in R libraries.
 
Data processing and visualization for metagenomics
- Know the data and metadata for these lessons.
- Assess the quality of the sequencing data.
- Trimm and filter the sequences to improve their quality.
- Perform a metagenomic assembly.
- Obtain Metagenome-Assembled Genomes and check their quality.
- Assign and visualize a taxonomy of reads and contigs.
- Explore the diversity and calculate diversity estimates.
- Discover more resources for metagenomics projects.


# Instructional Design
The workshop includes 16 hours of content with live coding, formative assessment practice, and other supportive elements. During the development of the lessons, we considered three axes of teaching: cloud setup, standardized episodes, and teaching strategies.

1. Cloud setup: We set up remote machines to standardize the learning environment and teaching experience. This setup lowers entry barriers for students without experience in technical installations and provides enough computing power regardless of individual configuration. Students only need a computer with internet access and the installation of a terminal. We also enlist the instructions for setting up the remote machines and an alternative installation guide to be used by people who prefer to follow the lessons on a different computer. 
2. Standardized episodes: Following The Carpentries instructional design, each episode contains the questions to be answered and the learning objectives and ends with concrete, clear messages of the learned content.
3. Teaching strategies
    - Live-coding: Programming simultaneously with students gives a practical coding experience with examples of mistakes occurring and getting solved.
    - Exercises and discussion in small groups: Allowing the learners to solve problems with peers incentivizes participation while applying what they learned to strengthen the new knowledge and skills. 
    - Content review: At the end and beginning of each session, we ask learners to revisit, enlist and explain the content taught in past lessons. We use a collaborative document where simultaneous written and spoken review helps to reaffirm the content.  

# Teaching Experience  
Our teaching team gathers undergraduate and graduate students, postdocs, and professors, each with different perspectives that enrich the discussion of the lesson. We found it adequate to have two instructors for the online workshops, plus one helper for every five students. We have greatly appreciated that we have recruited new helpers from the attendees of previous workshops, enlarging and enriching our teaching community.  
To promote an interactive learning experience, we use a collaborative live document and small groups to do exercises and discussions. In this way, there are fewer barriers for student’s participation, and they gain practical experience of the different solutions bioinformatic problems can have. We include bonus exercises around the lessons that are not meant to be solved by all the learners but are an opportunity for advanced participants to tackle more challenging tasks. They help to leverage the background and learning speed of the learners and provide opportunities to practice and reinforce the content learned. Another strength of our workshop structure is introducing programming languages followed by a practical example of their usage, so the metagenomic analysis grows while coding skills learning becomes meaningful. The lessons are helpful even if the student’s primary goal is to learn coding rather than metagenomics. We ask the attendees to fill surveys before, during, and after the workshops to adapt our teaching strategies to the current and future learning groups. With them, we have been able to improve the curriculum’s content, explanations, and exercises. 

# Story of the Project
Creating a lesson that comprised all of the steps required to process and analyze metagenomics data came to be when one of us wanted to learn to understand metagenomics data but found it overwhelming even to decide where to start. Being someone who already used and knew the advantages of the resources offered by The Carpentries, she acknowledged the absence of a curriculum about metagenomics on this platform. When she learned of the project of Carpentries Incubator, she reached out to a fellow student that had experience on the subject and started building the episodes. Little by little other students in the same institute, who were also working on metagenomics, started contributing with the pipelines they were learning. Other team members were recruited as helpers after attending a workshop and later began collaborating to develop the episodes.

# Acknowedgments
Diana Oaxaca, Alejandro Pereira Santana, Angélica Ruiz, Brian Bwanya, Ahmed Moustafa and Israel Pichardo, for enriching content and teaching strategy. Angélica Cibrián-Jaramillo, Francisco Barona-Gómez, and Harumi Shimada enable and promote the delivery of these lessons among their communities. Developers of Genomics Data Carpentry for their work and ideas. Toby Hodges and Erin Becker for their technical support during the development and delivery of the lessons. Students for their feedback and enthusiasm.


# Citations

Citations to entries in paper.bib should be in
[rMarkdown](http://rmarkdown.rstudio.com/authoring_bibliographies_and_citations.html)
format.

For a quick reference, the following citation commands can be used:
- `@author:2001`  ->  "Author et al. (2001)"
- `[@author:2001]` -> "(Author et al., 2001)"
- `[@author1:2001; @author2:2001]` -> "(Author1 et al., 2001; Author2 et al., 2002)"

# Figures

Figures can be included like this: ![Example figure.](figure.png)

# Acknowledgements

We acknowledge contributions from Brigitta Sipocz, Syrtis Major, and Semyeong
Oh, and support from Kathryn Johnston during the genesis of this project.

# References
