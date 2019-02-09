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

We have to define the internal extraction standard for each experiment in  the file `config_mtx/conversion_metabolite.csv`. Classical pSIRM experiments like the one we are using for this tutorial used cinnamic acid for tracking variations in experimental sample handling.

To do so:

  * Open the file: 'config_mtx/conversion_metabolite.csv`
  * Scroll down to the entry `Cinnamic acid trans-, 1TMS`
  * Verify that `InternalStandard` is defined in the column `Standard`
  * Save the file and close it

### Process `MTXQC_ExperimentalSetup.csv`

We are ready now to start processing the second module of the MTXQCvX2 called the Experimental Setup. 
In order to faciliate automated data processing throughout MTXQC files and parameters have to be defined beforehand for each project-folder.

Defined parameters are saved in the file `MTXQC_params.csv` inside the project-folder for future reference enabling to move the project-folder independently of the remaining MTXQC-files. A huge advantage for debugging and sharing your project^[Just zip-file the project-folder and send it via mail.]

Define the following parameter:

  * Define project-folder: psirm_glucose
  * Define input-format: maui
  * Name of annotation file: annotation.csv
  * Name of sample extracts file: sample_extracts.csv
  * Type of experiment: pSIRM
  * Applied 13C-substrates: glc
  * Internal standard: check
  * Type of samples: cell extracts
  * Additional calibration curves: no
  * Integrate add. calibration curves: no
  * Quantification standards: Quant1_v3
  * Volume polar phase of Quants: 500
  * Technical replicates^[Also called backups]: no
  
Confirm the parameter and file definition and wait a moment. Check if you can find the file `MTXQC_params.csv`and also `Maui_params.csv`. Latter one is automatically generated by selecting maui project as input format. `Maui_params.csv` contains the information of the pre-defined file names containing all required input data.

Have a look at the produced pdf-file and check the comments and messages. Throughout MTXQCvX2 messages inform about (1) successfull data imports, (2) fatal errors causing an automatic stop of data processing and (3) warning pointing towards things that should be checked before moving to the next step.

### Process `MTXQC_part1.Rmd`

Since we have defined all required input parameter the main document is ready to run after the definition of only three parameter:

  * Definition of the project-folder: psirm_glucose
  * Type of data: maui
  * Manual validated data^[Explained in detail in chapter \@ref(part3) and section \@ref(howmanval)]

Also here, scroll carefully through the generated pdf-file and have a look at the messages. If all works out it doesn't matter, but it might help to know what should be written if you end up with an error message instead of.

Each generated graphic is going to be explained in detail in chapter \@ref(part1). For now please refer to my phd thesis [@Zasada2017].

All quality metrices are visualised on the last page of the report split into two heatmaps:
  
  * GC-performance: orange, across all measurements
  * Quantification \& isotope incorporation: blue, for each intermediate
  
Besides the generation of the MTXQC_part1 report several `csv-files` are exported into the output folder summarising statistics of all quality control metrices. The content of each file is summarised in the dictionary of tables (chapter \@ref(tables)).

The most important file `CalculationFileData.csv` summarises all experimental conditions, normalisation factors as well as information about calibration curve parameter and derived quantities. You find this file here - `project-folder/output/quant/`. 

It is worth to open this file in a program of your choice and check for a selected intermediate the content. Wrong assignments of conditions in the annotation or sample extracts-file might cause duplication of values, easily to identify if exactly the same peak areas, so the same file, appears multiple times in this file.

`CalculationFileData.csv` is all about the absolute quantities and data normalisation. Why does it not contain information about isotope incorporation you might ask. Well, depending on the experimental setup you might follow different ways how to combine both entities. Furthermore `MTXQC_part1` is not about doing any processing of the data in the sense of analysis or statistics.^[Quality metrices are a different pair of shoe here and are not data per se]

The next module has been set up to give you a first quick report about the content of your data performing basic post processing steps.

### Process `MTXQC_part2.Rmd`
 
This module aims to provide you a quick overview of your data. It generates, based on your parameter definition while processing this file, statistics of quantities for each intermediate as well as isotope incorporation and 13C-labeled quantities. 

A senseful association of your experimental parameter might provide you even ready-to-show plots for a presentation or report. Different color schemes are in place to meet your personal taste - play a bit and find your favorite ;).

All kind of outputs (graphics, statistics) are saved at `output/quant/...` into a day-specific folder^[Called: Date_PostProcessing_AnalysisParam_QuantitativeValue], meaning if you repeat the same analysis several times a day the content is replaced with each run^[Same thing for the generated pdf-report so I recommend to move it into the post processing folder for future reference]. Simply modify the folder name to avoid this behaviour. If you go on with your analysis the next or another day a new folder is created.

Go and process this module with the following parameter:

  * Project-folder: psirm_glucose
  * Tpye of analysis: stringent
  * Internal standard: QC^[meaning, that all the internal standard has to be within a defined range of variation, files with higher variation are excluded from the analysis]
  * Quantitative value: InstStd_Conc_pmio^[Translated: Normalised (regarding the internal standard) quantities in (pmol/1e+6 cells)]
  * par1: time
  * par2: substrate
  * par3: whatelse
  
Feel free to add further plots at the end of this report if required or define your project specific color code at the beginning of the document.

I recommend to use the output of `MTXQC_part2.Rmd` as a kind of overall visualisation of the data. Specific questions might be addressed in smaller reports using the output-files of `MTXQC_part2.Rmd`.

I furthermore suggest to process both type of analysis - stringent and less stringent - to get an impression at what points the manual validation of distinct intermediates might be useful.

## At the end...

So far you have used MTXQCvX2 to generate two reports: (1) one summarising the quality of the generated data and (2) a first statistical overview about the content of your data. With this the tutorial ends and refers to the plenty of detailed information scattered in a number of additional chapters of this documentation.

The FAQ section tries to guide you through more specific settings and introduces you to the flexibility of MTXQCvX2.

Since every metabolomics experiment has it's own purpose and reasoning I want to point out, that MTXQCvX2 does not want to provide a magical tool giving the perfect solution for everyone. It rather tries to provide a common platform for discussions, information exchange and inspiration by reducing the time that has to be spend on "the boring part of research". There is no limit to make MTXQC your own perfect tool writing your own reports and extensions. 
