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

# Learning objectives
Project organization and management for metagenomics
- Plan, structure, organize and document metagenomics data, metadata, and bioinformatics workflow.
- Access to public data on the NCBI sequence read archive (SRA) database.

Introduction to the command-line for metagenomics 
Identify the benefits of the command line. 
Navigate the file system, create, copy, move, and remove files and directories.
Work with files.
Combine commands and automate repetitive tasks.
Make an organized file system for a bioinformatics project.
Introduction to R for metagenomics
-Familiarize with Rstudio and R functionality.
-Distinguish the different data types. 
-Create and manipulate data-frames.
-Use and find help in R libraries.
 
Data processing and visualization for metagenomics
- Know the data and metadata for these lessons.
- Assess the quality of the sequencing data.
- Trimm and filter the sequences to improve their quality.
- Perform a metagenomic assembly.
- Obtain Metagenome-Assembled Genomes and check their quality.
- Assign and visualize a taxonomy of reads and contigs.
- Explore the diversity and calculate diversity estimates.
- Discover more resources for metagenomics projects.


# Mathematics

Single dollars ($) are required for inline mathematics e.g. $f(x) = e^{\pi/x}$

Double dollars make self-standing equations:

$$\Theta(x) = \left\{\begin{array}{l}
0\textrm{ if } x < 0\cr
1\textrm{ else}
\end{array}\right.$$


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
