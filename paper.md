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
Metagenomics uses next-generation sequencing to study all of the genomic diversity 
present in a specific habitat. The analysis of such experiments requires extensive 
biological knowledge and the usage of informatics tools, including programming languages 
and software platforms. Although each tool is released with full tutorials, beginners 
struggle to build a pipeline that goes from raw data to useful biological insights. 
With this in mind, we created a workshop on The Carpentries’s lesson incubator. 
The Carpentries is an organization that already hosts worldwide-used open lessons for 
Genomics, Ecology, and specific programming languages, but a guide for metagenomics 
was missing. The purpose of the workshop is to take someone with no previous programming 
knowledge through a comprehensive workflow.

[@Binney:2008]. The combination of speed,
design, and support for Astropy functionality in ``Gala`` will enable exciting
scientific explorations of forthcoming data releases from the *Gaia* mission
[@gaia] by students and experts alike.

# Learning objectives
- Command-line 
  - Know the basic unix command-line commands to process and manage big amount of files and automate repetitive tasks
  - Use and know about different alternatives to increse power computing as amazon web services
  - Understand the use of an environment in conda
Project organization
  - Basic knowledge about organizing and carrying out a metagenomic project
  - Interpret and explain how the FASTQ file encodes per-base quality scores
- Cleaning data is essential before starting to manage our sequences 
  - Know how to clean and filter your sequencing data
  - Use trimmomatic for cleaning and trimming read process
- Assembly
  - Understand the basis of an assembly 
  - Run a metagenomic assembly with MetaSPAdes 
  - Obtain Metagenome-Assembled Genomes (MAGs) and check their quality using CheckM
- Taxonomy
  - Assign the MAGs to different taxa with Kraken
  -Visualize the taxonomy using Krona and Pavian
- R
  - Learn how R works and knowing their different data types 
  - Become able to manage libraries and their functions 
  - A useful tool for script writing 
  - Calculate diversity species indexes
  - Visualize the graphics and improve the aesthetics 

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
