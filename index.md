---
---

Data Carpentry’s aim is to teach researchers basic concepts, skills, and tools for working
with data so that they can get more done in less time, and with less pain. This workshop
teaches data management and analysis for metagenomics research including: 
best practices for organization of bioinformatics projects and data, use of command-line 
utilities, use of command-line tools to analyze sequence quality, use of R studio and
use of R libraries to compare diversity between samples, and connecting to and using cloud 
computing. This workshop is designed to be taught over two full days of instruction.

**Please note that workshop materials for working with Metagenomics data are in “alpha” development. 
These lessons are available for review and for informal teaching experiences, but are not yet part 
of The Carpentries’ official lesson offerings.**

Interested in teaching these materials? We have an 
[Slack channel](https://join.slack.com/t/metagenomicslesson/shared_invite/zt-pjaldgg7-BQVHxLTAqxlklkaH881xbA) 
were we will be happy to help you!


> ## Frequently Asked Questions
> Read our [FAQ](/metagenomics-workshop/faq/) to learn more about Data Carpentry's Metagenomics workshop, as an Instructor or a workshop host.
{: .callout}

> ## Getting Started
>
> This lesson assumes that learners have no prior experience with the tools covered in the workshop. 
> However, learners are expected to have some familiarity with biological concepts,
> including the 
> concept of microbiome. Participants should bring their own laptops and plan to participate actively. 
> 
> To get started, follow the directions in the [Setup](setup.html) tab to 
> get access to the required software and data for this workshop.
> 
{: .prereq}

> ## Data
> 
> This workshop uses data from enviromental experiment: [Genomic adaptations in information 
> processing underpin trophic strategy in a whole-ecosystem nutrient 
> enrichment experiment](https://elifesciences.org/articles/49816), by Jordan G Okie et al.
> In this research, authors compared the differences between the microbial community 
> in its natural, oligotrophic, phosphorus-deficient 
>environment, a pond from the Cuatro Ciénegas Basin (CCB), and the same microbial 
>community under a fertilization treatment.
>
> All of the data used in this workshop can be downloaded from
>  [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4285901.svg)](https://doi.org/10.5281/zenodo.4285901)
> More information about this data is available on the [Data page](https://datacarpentry.org/organization-genomics/data/).
{: .prereq} 

# Workshop Overview 

| Lesson    | Overview | Estimated time|
| ------- | ---------- | ---------- |
| [Project organization and management](https://carpentries-incubator.github.io/organization-metagenomics/) | Learn how to structure your metadata, organize and document your metagenomics data and bioinformatics workflow, and access data on the NCBI sequence read archive (SRA) database.|1:30 hr|  
| [Introduction to the command line](https://carpentries-incubator.github.io/shell-metagenomics/) |  Learn to navigate your file system, create, copy, move, and remove files and directories, and automate repetitive tasks using scripts and wildcards. | 4:00 hr| 
|[Introduction to R for metagenomics](https://carpentries-incubator.github.io/introduction-to-R-for-metagenomics/) | Use R studio to manage several data types and data strcutures. | 1:00 hr| 
|[Data processing and visualization for metagenomics](https://carpentries-incubator.github.io/metagenomics/) | Use command-line tools to perform quality control, taxonomic assignment, and diversity exploration. | 5:30 hr| 

<!--
# Optional Additional Lessons

| Lesson | Overview |
| ------- | -------- |
| [16S genomics](https://datacarpentry.org/genomics-r-intro/) | Use R to analyze and visualize between-sample variation. |
!-->

# Teaching Platform
This workshop is designed to be run on pre-imaged Amazon Web Services (AWS)
instances. All the software and data used in the workshop are hosted on an Amazon Machine Image (AMI).
If you want to run your own instance of the server used for this workshop, follow the directions in the [Setup](setup.html) tab. 

## Citation 
Preparing to submit to [JOSE](paper.md)
