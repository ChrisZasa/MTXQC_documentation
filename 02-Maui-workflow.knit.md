# Tutorial: Maui-annotation projects{#maui}

## Read this in case

- you have successfully finished the annotation using Maui-SILVIA
- exported all required MAUI container (see \@ref(mauiexport))
- you have a list of your GC-MS sequence and related experimental conditions
- you know the extraction procedure of standards and samples

## In a nutshell{#nutshellmaui}

1. Setup a new R-project 
2. Copy all MTXQC template files and folders
3. *Knit with parameter*: `MTXQC_init.Rmd` and create project folder (e.g., `psirm_glucose`)
4. Copy input files and rename `ManualQuantTable.tsv` (e18205cz.tsv) 
5. Create your `annotation.csv` and `sample_extracts.csv` files
6. Define the internal extraction standard
7. *Knit with parameter*: `MTXQC_ExperimentalSetup.Rmd` 
8. *Knit with parameter*: `MTXQC_part1.Rmd` 
9. *Knit with parameter*: `MTXQC_part2.Rmd` 
10. If required, proceed with `MTXQC_part3.Rmd` for manual validation of your data

## Dataset of the tutorial - `tutorial_single_maui`

Copy the dataset `tutorial_single_maui` somewhere local on your computer or laptop. The dataset represents the data of the first psirm metabolomics experiment in the Kempa Lab. HEK293 cells have been cultivated at 21\% oxygen and a range of glucose levels (0.3 - 4.5 g/L Glc) and constant glutamine concentration (4 mM) following standard cell culture procedures. During the cell harvest cells have been labeled for two minutes with uniformly labeled 13C-glucose, three replicates per condition.


## In detail

### Setup a R-project

R-projects provide a secure environment to handle your data from the processing in MTXQCvX2 until the final reports and analysis. Think about it as a big bubble containing and carrying all your data and analysis savely from one place to the other undisturbed of the outside changes.

* Open R-studio and create a new project following: `File -> New project -> New Project -> New Directory` and call the directory `tutorial_single_maui` and the preferred subdirectory. 
* I recommend to start each project in a new session (tick the box at the bottom of the dialogue box).

### Copy MTXQCvX2 template files

* Download the current version of MTXQCvX2 called fluffy adventure [here](github.com/ChrisZasada/fluffy_adventure)
* Open and extract the zip-file
* Copy all folders and files into your newly created R-project 'tutorial_single_maui`

### Process `MTXQC_init.Rmd`

The module `MTXQC_init.Rmd` provides you two important things: (1) a proper structure inside your MTXQC-project and (2) a comprehensive check-up if all required packages are installed and in the case they are missing takes care of the installation of those.

All you need to do is to process the `MTXQC_init.Rmd` defining a project-folder. The project folder is going to contain all input and output files.

* Click on the small black triangle next to the ball of yarn
* Choose `Knit with Parameters...`
* Define the name of the project-folder: `psirm_glucose`

Check in the files tab of R-Studio if you see the new folder an browse trough it. You find there the following folders: 'input', 'output' and 'figures' with a detailed subfolder structure.

### Copy / prepare input files

#### Subfolder: `input/gc`

This folder contains all input files that are required to assess the quality of the GC-MS perfomance for the complete GC-MS run. In order to validate all four parameter we need to export the following information from the Maui-project.

You can perform exports via right click on either the project name and the functions provided in the menue `Diagnostics` or direct righ click on data container, e.g., 

* Open your Maui-project and export:
  1. Alcane_intensities.csv: Diagnostics/Export Alcane intensities
  2. MassSum-73.csv: Diagnostics/QC Mass Sum Export and define 73 for m/z 73
  3. PeakDensities-Chroma.csv - Diagnostics/Export PeakDensities
* Export the information of the cinnamic acid 




* Collect all required input files and copy them into the following subfolders of the folder `input/`.
* Rename the file `ManualQuantTable.tsv` with the corresponding Batch-Id of your GC-MS run (e.g., e17205cz)

A detailed explanation which containers have to be exported using what export function is summarised in section \@ref(mauiexports) or in the table below





