---
layout: page
title: Setup
---

## In a The Carpentries Workshop  
This workshop is designed to be run on pre-imaged Amazon Web Services (AWS)
instances. With the exception of a spreadsheet program and an internet browser, all of the command 
line software and data used in the workshop are hosted on an Amazon 
Machine Image (AMI). This lesson requires a working spreadsheet program. 
If you don't have a spreadsheet program already, you can use LibreOffice. 
It's a free, open source spreadsheet program.If you are signed up to take 
a Metagenomics Data Carpentry Workshop, you do *not* need to worry about setting
up an AMI instance. The Carpentries staff will create an instance 
for you and this will be provided to you at no cost. 
This is true for both self-organized and centrally-organized workshops. 
Your Instructor will provide instructions for connecting to the AMI instance at the workshop.

If you are in an The Carpentries-Workshop, you do not even need to install a bash terminal, 
the R-studio terminal provided in the AWS-AMI is enough to run all the commands in the lesson. 
Instead of connecting by ssh users can simply use the R-studio AMI terminal. 

## Running the lesson by yourself (Not in a The Carpentries Workshop)

### Required  software  
If you are not in a The Carpentries workshop the metagenomics specific software that you will need is:  

| Software | Version | Manual | Available for | Description |
| -------- | ------------ | ------ | ------------- | ----------- |
| [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/) | [0.11.9](https://anaconda.org/bioconda/fastqc) | [Help](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/Help/)| Linux, macOS, Windows | Quality control tool for high throughput sequence data.|
| [Trimmomatic](http://www.usadellab.org/cms/?page=trimmomatic) | [0.39](https://anaconda.org/bioconda/trimmomatic) | [GitHub](https://github.com/usadellab/Trimmomatic) | Linux, macOS, Windows | A flexible read trimming tool for Illumina NGS data. |
|[Kraken](http://ccb.jhu.edu/software/kraken2/)| [2.1.2](https://anaconda.org/bioconda/kraken2)|[GitHub](https://github.com/DerrickWood/kraken2/wiki/Manual)|Linux, macOS|A tool for taxonomic assignation for reads from metagenomics|
|[KronaTools](https://github.com/marbl/Krona/tree/master/KronaTools) |[2.8.1](https://anaconda.org/bioconda/krona)|[GitHub](https://github.com/marbl/Krona/tree/master/KronaTools)|Linux, macOS, Windows|A tool for taxonomic visualization in hierarchical pie graphs.|
|[MaxBin2](http://downloads.jbei.org/data/microbial\_communities/MaxBin/MaxBin.html)|[2.2.7](https://anaconda.org/bioconda/maxbin2)| [SourceForge](https://sourceforge.net/projects/maxbin2/)|Linux, macOS| Tool for MAGs reconstruction|
|[Spades](https://cab.spbu.ru/software/spades/)|[3.15.2](https://anaconda.org/bioconda/spades)|[GitHub](https://github.com/ablab/spades)|Linux, macOS| Tool for assemblies|
|[Kraken-biom](https://github.com/smdabdoub/kraken-biom)|[1.2.0](https://anaconda.org/bioconda/kraken-biom)|[GitHub](https://github.com/smdabdoub/kraken-biom)|Linux, macOS, Windows|Tool to convert kraken reports in R readable files|
|[CheckM-genome](https://ecogenomics.github.io/CheckM/)|[1.2.1](https://anaconda.org/bioconda/checkm-genome)|[Wiki](https://github.com/Ecogenomics/CheckM/wiki)|Linux, macOs, Windows|Tool to check completeness and contamination in MAGs |  

You can get this software by two options. Option A is by renting a ready-to-use Amazon Web Services instance
and option B is by installing a Conda environment and some R libraries. Instructions for both options are written next. 

### Option A: Using the lessons with Amazon Web Services (AWS)

Follow these [instructions on creating an Amazon instance](https://carpentries-incubator.github.io/metagenomics-workshop/AMI-setup/index.html). Use the AMI `ami-0e7fb76a881ab5e09` (Metagenomics - 18 March (The Carpentries Incubator)) listed on the Community AMIs page. Please note that you must set your location as `N. Virginia` in order to access this community AMI. You can change your location in the upper right corner of the main AWS menu bar. The cost of using this AMI for a few days, with the t2.medium instance type is very low (about USD $1.50 per user, per day). Data Carpentry has *no* control over AWS pricing structure and provides this cost estimate with no guarantees. Please read AWS documentation on pricing for up-to-date information. 

If you're an Instructor or Maintainer or want to contribute to these lessons, please get in touch with us [team@carpentries.org](mailto:team@carpentries.org) and we will start instances for you. 

In this instances you can use the terminal available in R studio and users won't need
to install their own terminals or use `ssh` (see instructor notes). If nevertheless you
prefer that the users install their own terminals, directions to install them are included 
for each Windows, Mac OS X, and Linux systems below. For Windows, you will also need to install Git Bash, PuTTY, or the Ubuntu Subsystem.

#### Installing a linux terminal 

> ## Windows
> - Download the [Git for Windows installer](https://git-for-windows.github.io/). Run the installer and follow the steps below:
>   + Click on "Next" four times (two times if you've previously installed Git). You don't need to change anything in the Information, location, components, and start menu screens.
>   + Select "Use the nano editor by default" and click on "Next".
>   + Keep "Use Git from the Windows Command Prompt" selected and click on "Next". If you forgot to do this programs that you need for the workshop will not work properly. If this happens rerun the installer and select the appropriate option.
>   + Select on "Use bundled OpenSSH" and click on "Next".
>   + Select on "Use the OpenSSL Library" and click "Next".
>   + Keep "Checkout Windows-style, commit Unix-style line endings" selected and click on "Next".
>   + Select "Use Windows' default console window" and click on "Next".
>   + Select "Default (fast-forward on merge)" and click on "Next".
>   + Select "None" (Do not use a credential helper) and click on "Next".
>   + Select "Enable file system caching" and click on "Next".
>   + Ignore "Configuring experimental options" and click on "Install".
>   + Click on "Install".
>   + Click on "Finish".
>   + If your "HOME" environment variable is not set (or you don't know what this is):
>   + Open command prompt (Open Start Menu then type `cmd` and press [Enter])
>   + Type the following line into the command prompt window exactly as shown: `setx HOME "%USERPROFILE%"`
>   + Press [Enter], you should see `SUCCESS: Specified value was saved.`
>   + Quit command prompt by typing `exit` then pressing [Enter]
>   + See the [video tutorial](https://youtu.be/yo7Z-BEG62A) for an example on how to install Git on Windows 11.
>   
> - An **alternative option** is to install PuTTY
>  by going to the [the installation page](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html). For most newer computers, click on putty-64bit-X.XX-installer.msi to download the 64-bit version. If you have an older laptop, you may need to get the 32-bit version putty-X.XX-installer.msi. If you aren't sure whether you need the 64 or 32 bit version, you can check your laptop version by following [the instructions here](https://support.microsoft.com/en-us/help/15056/windows-32-64-bit-faq). Once the installer is downloaded, double click on it, and PuTTY should install.
> - **Another alternative option** is to use the Windows Subsystem Linux (WSL). This option is available for Windows 10 and Windows 11 - detailed [instructions are available here](https://learn.microsoft.com/en-us/windows/wsl/install).
> See the [video tutorial](https://youtu.be/YoNdTuN-YWk) for an example on how to install WSL with Ubuntu 22.04 on Windows 11.
> 
{: .solution}

> ## macOS
> -  The default shell in some versions of macOS is Bash, and Bash is available in all versions, so no need to install anything. You access Bash from the Terminal (found in /Applications/Utilities). See the [video tutorial](https://youtu.be/FuNsWg%5C_VzeQ) for an example on how to open the Terminal. You may want to keep Terminal in your dock for this workshop.
{: .solution}

> ## Linux
>  - The default shell is usually Bash and there is usually no need to install anything. To see if your default shell is Bash type echo $SHELL in a terminal and press the Enter key. If the message printed does not end with '/bash' then your default is something else and you can run Bash by typing bash.
{: .solution}

### Option B: Using the lessons on your local machine  
If you trust that your computer is powerfull enough and want to have all the programs installed you can follow all the workshop without using and
AWS remote machine. To do this, you will need to install all of the software used in the workshop and obtain a copy of the
dataset. Instructions for doing this are below.  

#### Data   
The data used in this workshop are available on Zenodo. Because this workshop works with real data, be aware that file sizes for the data are large. Please read the Zenodo page linked below for information about the data and access to the data files. 
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4285900.svg)](https://doi.org/10.5281/zenodo.4285900)

More information about these data will be presented in the [first episode of the Data processing and visualization for metagenomics lesson](https://carpentries-incubator.github.io/metagenomics/01-background-metadata/index.html).

#### Conda environment 
Follow this instructions to install and activate the metagenomics environment. 
Here is a link to [specifications file](https://github.com/carpentries-incubator/metagenomics/blob/gh-pages/files/spec-file-Ubuntu22.txt) for Linux Ubuntu 22.04 with the exact versions of each tool in this environment. You can use the spec file as follows:  
> ~~~
> $ conda create --name metagenomics --file spec-file-Ubuntu22.txt
> ~~~
>{: .bash}

More information about how to use environments and spec file is available at [conda documentation](https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html)

This environment can be modified by adding or deleting tools in a file `metagenomics-Ubuntu22.yml`.

This is the original [metagenomics-Ubuntu22.yml](https://github.com/carpentries-incubator/metagenomics/blob/gh-pages/files/spec-file-Ubuntu22.txt) file working on Ubuntu 22.04. See the [video tutorial](https://youtu.be/0Ks1k9gg3E0)

~~~
$ cat metagenomics-Ubuntu22.yml
~~~
{: .bash}
~~~
name: metagenomics  
channels:
  - bioconda
  - conda-forge
  - defaults
dependencies:                                      
  - checkm-genome=1.2.1=pyhdfd78af_0
  - fastqc=0.11.9=hdfd78af_1         
  - kraken-biom=1.2.0=pyh5e36f6f_0
  - kraken2=2.1.2=pl5321h9f5acd7_2
  - krona=2.8.1=pl5321hdfd78af_1
  - maxbin2=2.2.7=he1b5a44_17e_0
  - spades=3.14.1=h95f258a_2
  - trimmomatic=0.39=hdfd78af_2

~~~
{: .output}

It has been difficult to find compatibility between all the dependencies of each package installed in the metagenomics environment. In the case of the latest version of macOS (Monterey), the MaxBin2 package can be installed, but it does not fully work at the time of use.

[metagenomics-macOS.yml](https://github.com/carpentries-incubator/metagenomics/blob/gh-pages/files/metagenomics-macOS.yml)

In the case of Windows Subsystem for Linux WSL Ubuntu 22.04, the MaxBin2 package has an incompatibility with the checkm-genome package, so we have decided to leave it out of the metagenomics environment and create its own ([metagenomics-maxbin.yml](https://github.com/carpentries-incubator/metagenomics/blob/gh-pages/files/metagenomics-maxbin.yml)) environment.

[metagenomics-WSLUbuntu.yml](https://github.com/carpentries-incubator/metagenomics/blob/gh-pages/files/metagenomics-WSLUbuntu.yml)

See the [video tutorial](https://youtu.be/kHYmffZYxcI)

Then you can create your own metagenomics conda environment using the `.yml` file according to your operating system.
~~~
$ conda env create -f metagenomics-Ubuntu22.yml
~~~
{: .bash}  

Finally execute some remaining installation scripts.  
~~~
bash /home/dcuser/.miniconda3/envs/metagenomics/opt/krona/updateTaxonomy.sh                                
wget ftp://ftp.ncbi.nih.gov/pub/taxonomy/taxdump.tar.gz 
tar -xzf taxdump.tar.gz 
mkdir .taxonkit
cp names.dmp nodes.dmp delnodes.dmp merged.dmp /home/dcuser/.taxonkit
rm *dmp readme.txt taxdump.tar.gz gc.prt 
~~~
{: .bash}  

#### R and RStudio:

R and RStudio are two separate pieces of software:

R is a programming language that is especially powerful for data exploration, visualization, and statistical analysis
RStudio is an integrated development environment (IDE) that makes using R easier. In this course we use RStudio to interact with R.

> ## Mac OS X
> -  Download R from the [CRAN website](https://cran.r-project.org/bin/macosx/).
> + Select the .pkg file for the latest R version
> + Double click on the downloaded file to install R
> + It is also a good idea to install [XQuartz](https://www.xquartz.org/) (needed by some packages)
> + Go to the [RStudio download](https://www.rstudio.com/products/rstudio/download/#download) page
> + Under Installers select RStudio x.yy.zzz - Mac OS X 10.6+ (64-bit) (where x, y, and z represent version numbers)
> + Double click the file to install RStudio
> + Once it’s installed, open RStudio to make sure it works and you don’t get any error messages.
{: .solution}

> ## Windows
> -  Download R from the [CRAN website](https://cran.r-project.org/bin/windows/base/release.htm).
> + Run the .exe file that was just downloaded
> + Go to the [RStudio download page](https://www.rstudio.com/products/rstudio/download/#download)
> + Under Installers select RStudio x.yy.zzz - Windows Vista/7/8/10 (where x, y, and z represent version numbers)
> + Double click the file to install it
> + Once it’s installed, open RStudio to make sure it works and you don’t get any error messages.
{: .solution}

> ## Linux
> - Follow the instructions for your distribution from [CRAN](https://cloud.r-project.org/bin/linux), they provide information to get the most recent version of R for common distributions. For most distributions, you could use your package manager (e.g., for Debian/Ubuntu run sudo apt-get install r-base, and for Fedora sudo yum install R), but we don’t recommend this approach as the versions provided by this are usually out of date. In any case, make sure you have at least R 3.3.1.
> + Go to the [RStudio](https://www.rstudio.com/products/rstudio/download/#download) download page
> + Under Installers select the version that matches your distribution, and install it with your preferred method (e.g., with Debian/Ubuntu ´sudo dpkg -i rstudio-x.yy.zzz-amd64.deb´ at the terminal).
> + Once it’s installed, open RStudio to make sure it works and you don’t get any error messages.
{: .solution}

#### Software(packages) for R:

| Software | Version | Manual | Description |
| -------- | ------------ | ------ | ------------- |
| [phyloseq](https://github.com/joey711/phyloseq) | 1.39.1 | [GitHub](https://github.com/joey711/phyloseq) | Explore, manipulate and analyze microbiome profiles with R |
| [ggplot2](https://ggplot2.tidyverse.org/) | 3.3.6 | [GitHub](https://github.com/tidyverse/ggplot2) | System for declaratively creating graphics, based on The Grammar of Graphics |

### QuickStart Software Installation Instructions

These are the QuickStart installation instructions. They assume familiarity with the command line and with installation in general. As there are different operating systems and many different versions of operating systems and environments, these may not work on your computer. If an installation doesn't work for you, please refer to the user guide for the tool, listed in the table above.

We have installed software using [miniconda](https://docs.conda.io/en/latest/miniconda.html). Miniconda is a package manager that simplifies the installation process. Please first install miniconda3 (installation instructions below), and then proceed to the installation of individual tools. 

### Miniconda3

> ## Linux
> 
>To install miniconda3, see the [video tutorial](https://youtu.be/0PqwShSDH20)

Or in a terminal type:
>~~~
>$ curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
>$ bash Miniconda3-latest-MacOSX-x86_64.sh
>~~~
>{: .bash}
>Then, follow the instructions that you are prompted with on the screen to install Miniconda3.
>See the video tutorial, [installing Miniconda3 on WSL Ubuntu](https://youtu.be/owQgZoE-GrY)
>
{: .solution}


### Installing packages on Miniconda3 environment

> ## Terminal of active environment
>
>To install a bioconda package, type:
>
> ~~~
> $ conda install -c bioconda package_name
> ~~~
> 
{: .bash}
{: .solution}

