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

The module `MTXQC_init.Rmd` provides you two important things: 
  (1) Check-up package installation
  (2) Creation of project-folder
  
The project folder is supposed to provide a tidy structure while data processing and analysis and contains several pre-defined folder. Besides the following folders: 'input', 'output' and 'figures' you see a detailed subfolder structure. You find more details about each folder and additional suggestion how to use project-folder in chapter \@ref(init). 

All you need to do is to process the `MTXQC_init.Rmd`. The following procedure is how you process all `.Rmd`-files of MTXQCvX2:

  * Click on the small black triangle next to the ball of yarn
  * Choose `Knit with Parameters...`
  
If the `.Rmd`-file contains defined parameters a shiny dialogue pops up and provides an interactive selection based on the document. In the case of `MTXQC_init.Rmd` you are asked to define a so-called project-folder, e.g., `psirm_glucose`.

  * Define the name of the project-folder: `psirm_glucose`

Check in the files tab of R-Studio if you see the new folder and browse through it. 

### Prepare and copy input files

Several files have to be exported from Maui and copied into the folders `input/gc`, `input/quant` and `input/inc` for the evaluation of the GC-MS performance, absolute quantification and isotope incorporation. 

Please follow the detailed instructions in section \@ref(mauiexport) if you need further information how to perform the export in Maui. For the purpose of the tutorial the exported files are already processed and copied into the corresponding subfolders of the `input`-folder.


### Copy files: `annotation.csv` and `Sample_extracts.csv`

Both files contain important information about your metabolomics experiment and since these information are highly specific you need to create them on your own and save them in `project-folder/input/`.

Browse to both files in the tutorial dataset, have a look at the content and copy both files into `psirm_glucose/input`. 

The herein shown *annotation file* contains information about the eperimental conditions of each sample and measurement file. The columns **File** and **Type** are mandatory, additional columns defining further parameter, like cell line or glucose level, are totally customizable to your needs. 

The *sample extracts* file specify the nature and volume / weight of the sample extracts. The columns **Extract_vol** and **Unit** are mandatory here. This file here shows cell extracts defined with the unit *count* for specific conditions. Please be aware that names of experimental conditions have to match between annotation and sample extracts file. 

Nevertheless it is not necessarily required to define for each combination of conditions a cell count. Please refer FAQs section \@ref(createannotation) and \@ref(createsampleextracts) for further information how to create and set up both files from the scretch.

### Define an internal standard - cinnamic acid

We have to define the internal extraction standard for each experiment in `config_mtx/conversion_metabolite.csv`. Classical pSIRM experiments like the one we are using for this tutorial used cinnamic acid for tracking variations in experimental handling. This provides flexibility in the experimental setup. 

* Open the file: 'config_mtx/conversion_metabolite.csv`
* Scroll down to the entry `Cinnamic acid trans-, 1TMS`
* Define `InternalStandard` in the column `Standard`
* Save the file and close it

### Process `MTXQC_ExperimentalSetup.csv`



### Process `MTXQC_part1.Rmd`


### Process `MTXQC_part2.Rmd`
 


