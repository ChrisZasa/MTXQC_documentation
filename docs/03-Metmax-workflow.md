# Tutorial: MTXQCvX2 for for Metmax-extracted projects{#metmax}

## Prerequisites

- You have processed and annotated your intermediates in ChromaToF
- You have defined the correct quantification masses in the reference search
- You have exported the data in `.txt` files
- You have used metmax^[http://gmd.mpimp-golm.mpg.de/apps/metmax/default.htm] to extract the data (see chapter \@ref(metmaxproc))

## In a nutshell
 
1. Setup a new R-project
2. Copy MTXQCvX2 files
3. *Knit with parameter:* `MTXQC_init.Rmd`
4. Copy input files extracted with Metmax into `input/metmax/`
5. Generate annotation and sample extracts file (see section \@ref(createannotation) \& \@ref(createsampleextracts))
6.  Modify metabolite names in `conversion_metabolite.csv` column **Metabolite_manual**
7.  Define the internal standard and/or alkanes in conversion_metabolite.csv (see section \@ref(definternal) \& \ref(defalkanes))
8. *Knit with parameter:* `MTXQC_ExperimentalSetup`
9. *Knit with parameter:* `MTXQC_part4.Rmd`
10. *Knit with parameter:* `MTXQC_part1.Rmd`
11. *Knit with parameter:* `MTXQC_part2.Rmd`
12. If required - proceed with `MTXQC_part3.Rmd` for ManualValidation

## Tutorial dataset

Birte test measurement

## In detail
### Setup a new R-project

R-projects provide a secure environment to handle your data from the processing in MTXQCvX2 until the final reports and analysis. Think about it as a big bubble containing and carrying all your data and analysis savely from one place to the other undisturbed of the outside changes.

  * Open R-studio and create a new project following: `File -> New project -> New Project -> New Directory`
  * Call the directory `tutorial_metmax` and the preferred subdirectory. 
  * I recommend to start each project in a new session (tick the box at the bottom of the dialogue box).

### Copy MTXQCvX2 template files

* Download the current version of MTXQCvX2 called fluffy adventure^[github.com/ChrisZasada/fluffy_adventure]
* Open and extract the zip-folder
* Copy all folders and files into your R-project `tutorial`

### Process `MTXQC_init.Rmd`

The module `MTXQC_init.Rmd` performs two important steps: 
  1. Check-up package installation
  2. Creation of project-folder
  
The project folder is supposed to provide a tidy structure while data processing and analysis and contains several pre-defined folder. Besides the following folders: `input`, `output` and `figures´ you see a detailed subfolder structure. You find more details about each folder and additional suggestion how to use project-folder in chapter \@ref(init). 

All you need to do is to process the `MTXQC_init.Rmd`. The following procedure is how you process all `.Rmd`-files of MTXQCvX2:

  * Click on the small black triangle next to the ball of yarn in the R-Studio toolbar
  * Choose `Knit with Parameters...`
  
If the `.Rmd`-file contains defined parameters a shiny dialogue pops up and provides an interactive selection based on the document. In the case of `MTXQC_init.Rmd` you are asked to define a so-called project-folder.

  * **Define the name of the project-folder:** `t_metmax`

Check in the files tab of R-Studio, browse through it and get familiar with the structure. This is the home of your metabolomics projects data analysis.

### Copy input files fom tutorial dataset

`MTXQC_part4.Rmd` convienently transform spreadsheet kind of data extracted with Metmax into suitable input files in the style of Maui input files. You do not need necessarily provide all three kind of information (peak areas, MIDs and m/z 73 values). It depends on the scope and setup of your metabolomics experiment. 

If you need detailed instructions how to use metmax have a look at the section \@ref(metmaxproc). The input files of the tutorial dataset have to be copied from `input/metmax/' into your R-project and project folder at the same location.

Copy the files into `tutorial/input/t_metmax/`:

  * PeakAreas.csv and
  * mz73.csv
  * MIDs.csv

### Copy files: `annotation.csv` and `Sample_extracts.csv`

Both files contain important information about your metabolomics experiment and since these information are highly specific you need to create them on your own and save them in `project-folder/input/`.

Browse to both files in the tutorial dataset, have a look at the content and copy both files into `t_metmax/input`. 

**The annotation file**

The herein shown *annotation file* contains information about the eperimental conditions of each sample and measurement file. The columns **File** and **Type** are mandatory and the minimum content of an annotation file. Additional columns defining further conditions, like cell line or glucose level, are totally customizable to your preferences. 

Though, I suggest to set up a maximum of four parameter. If your project requires more try to create combinations. Later on this helps to visualise your data using MTXQC_part2. The number of parameters is limited by the availabily of diagram axes, facets and paper size. Subsequently written individual reports are independent of this and conditions could be split and extended without any limitations.

**The sample extrats file**

The *sample extracts* file specify the nature and volume / weight of the sample extracts. The columns **Extract_vol** and **Unit** (count, mg or ul) are mandatory here.

The minimal file contains these two columns with at least one row / entry, e.g. $1.5e+6$ \& count. This would result into the association of $1.5e+6$ cells to each file.

This file here in this tutorial shows cell extracts defined with the unit *count* for specific conditions. Please be aware that names of experimental conditions have to match between annotation and sample extracts file. 

Nevertheless it is not necessarily required to define for each combination of conditions a cell count. Please refer FAQs section \@ref(createannotation) and \@ref(createsampleextracts) for further information how to create and set up both files from the scretch.

### Update `Metabolite_manual` in the file `config_mtx/conversion_metabolites.csv`

In order to automatically process through MTXQCvX2 you need to link the names of your intermediates given in ChromaToF with the corresponding metabolites in `conversion_metabolites.csv`

  * Open the file `conversion_metabolite.csv` and your peak area matrix file
  * Update the column 'Metabolite_manual' with the choosen names
  
I suggest to use always a similar format, e.g. `#Alanine_3TMS`. In case of the presence of main- (MP) and byproducts (BP) use: Metabolite_Derivate_MP/BP, e.g., Glucose_(1MEOX)(5TMS)_MP.
In that way names keep short, easy to remember and effeciently setup in all other files like the metmax import list to extract the MIDs^[Mass isotopomer distribution] for each intermediate. 

### Define the internal standard and alkanes in `config_mtx/conversion_metabolites.csv`

Both information are specified in the column `Standard` with either `InternalStandard` or `Alk`, respectively. Furhtermore, we need to define cinnamic acid as internal standard and nine alkanes (c10-c36). 

The in-lab protocol considers nine alkanes from c10 to c36. Standard annotation includes an hashtag, e.g., #c10. Small fun fact: if you use this annotation even Metmax would be able to determine the retention index.

To do so:

  * Open the file: `config_mtx/conversion_metabolite.csv`
  * Scroll down to the entry `Cinnamic acid trans-, 1TMS`
  * Verify that `InternalStandard` is defined in the column `Standard`
  * Check the annotation of alkanes in `Metabolite_manual`
  * Define all nine with adding `Alk` in the column `Standard`

### Process `MTXQC_ExperimentalSetup.csv`

We are ready now to start processing the second module of the MTXQCvX2 called the Experimental Setup. 
In order to faciliate automated data processing throughout MTXQC files and parameters have to be defined beforehand for each project-folder.

Defined parameters are saved in the file `MTXQC_params.csv` inside the project-folder for future reference enabling to move the project-folder independently of the remaining MTXQC-files. A huge advantage for debugging and sharing your project^[Just zip-file the project-folder and send it via mail.]

Define the following parameter:

  * **Define project-folder:** t_metmax
  * **Define input-format:** metmax
  * **Name of annotation file:** annotation.csv
  * **Name of sample extracts file:** sample_extracts.csv
  * **Type of experiment:** pSIRM
  * **Applied 13C-substrates:** glc
  * **Internal standard:** check
  * **Type of samples:** cell extracts
  * **Additional calibration curves:** no
  * **Integrate add. calibration curves:** no
  * **Quantification standards:** Quant1_v4
  * **Volume polar phase of Quants:** 500
  * **Technical replicates:**^[Also called backups] 2
  
Confirm the parameter and file definition and wait a moment. Check if you can find the file `MTXQC_params.csv`.

Have a look at the produced pdf-file and check the comments and messages. Throughout MTXQCvX2 messages inform about:
  * Successfull data imports
  * Fatal errors causing an automatic stop of data processing and 
  * Warnings pointing towards things that should be checked before moving to the next step.
  
### Process `MTXQC_part4.Rmd`

Now everything is prepared to transform our spreadsheet data into proper MTXQCvX2 input files. Please go ahead and define the following parameter to run `MTXQC_part4.Rmd`:

  * **Project folder:** t_metmax
  * **File containing peak areas:** PeakAreas.csv
  * **File containing mz 73 values:** mz73.csv
  * **File containing MIDs:** MIDs.csv
  * **Generate file for internal standard:** (check)
  * **Generate file for alkanes:** (check)
  * **Generate file for sum of area normalisation:** (check)
  * **Generate ManualQuantTable and samples file:** (check)
  * **Determine isotope incorporation:** (check)

After the successfull processing you should find the parameter file `Metmax_params.csv` inside your project folder, as well as all files in their correct `input-folders`.

Have a look and check if you got all of them and have a look at the messages in the `MTXQC_part4.Rmd` report.

### Process `MTXQC_part1.Rmd`

Since we have defined all required input parameter the main module is ready to run after the definition of only three parameter:

  * **Definition of the project-folder:** t_metmax
  * **Type of data:** metmax
  * **Manual validated data:** none

Also here, scroll carefully through the generated pdf-file and have a look at the messages. If all works out it doesn't matter, but it might help to know what should be written if you end up with an error message instead of.

Each generated graphic is going to be explained in detail in chapter \@ref(part1). For now please refer to my phd thesis [@Zasada2017].

All quality metrices are visualised on the last page of the report split into two heatmaps:
  
  * GC-performance (orange): across all measurements
  * Quantification \& isotope incorporation (blue): for each intermediate individually, but across all exp. conditions
  
Besides the generation of the MTXQC_part1 report several `csv-files` are exported into the output folder summarising statistics of all quality control metrices. The content of each file is summarised in the dictionary of tables (chapter \@ref(tables)).

The most important file `CalculationFileData.csv` summarises all experimental conditions, normalisation factors as well as information about calibration curve parameter and derived quantities. You find this file here - `project-folder/output/quant/`. 

It is worth to open this file in a program of your choice and check for a selected intermediate the content. Wrong assignments of conditions in the annotation or sample extracts-file might cause duplication of values, easily to identify if exactly the same peak areas, so the same file, appears multiple times.

`CalculationFileData.csv` is all about the absolute quantities and data normalisation. Why does it not contain information about isotope incorporation you might ask. Well, depending on the experimental setup you might follow different ways how to combine both entities. Furthermore `MTXQC_part1.Rmd` is not about doing any processing of the data in the sense of analysis or statistics^[Quality metrices are a different pair of shoes here and are not data per se]. It is supposed to assess the quality meaning the evaluation of the mass isotopomer distributions (MIDs) that are the basis for the calculation of the isotope incorporation.  

The next module has been set up to give you a first quick report about the content of your data performing basic post processing steps inclduing the statistics part.

### Process `MTXQC_part2.Rmd`
 
This module aims to provide you a quick overview of your data. It generates, based on your parameter definition while processing this file, statistics of quantities for each intermediate as well as isotope incorporation and 13C-labeled quantities. 

A senseful association of your experimental parameter might provide you even ready-to-show plots for a presentation or report. Different color schemes are in place to meet your personal taste - play a bit and find your favorite ;).

All kind of outputs (graphics, statistics) are saved at `output/quant/...` into a day-specific folder^[Called: Date_PostProcessing_AnalysisParam_QuantitativeValue], meaning if you repeat the same analysis several times a day the content is replaced with each run^[Same thing for the generated pdf-report so I recommend to move it into the post processing folder for future reference]. Simply modify the folder name to avoid this behaviour. If you go on with your analysis the next or another day a new folder is created.

Go and process this module with the following parameter:

  * **Project-folder:** t_metmax
  * **Type of analysis:** less_stringent
  * **Internal standard:** QC^[meaning, that all the internal standard has to be within a defined range of variation, files with higher variation are excluded from the analysis]
  * **Quantitative value:** InstStd_Conc_pmio^[Translated: Normalised (regarding the internal standard) quantities in (pmol/1e+6 cells)]
  * **par1:** Time
  * **par2:** CL
  * **par3:** none
  * **par4:** none
  * **updated:** none
  * **pre-defined color scheme:** choose yourself
  
Feel free to add further plots at the end of this report if required or define your project specific color code at the beginning of the document.

I recommend to use the output of `MTXQC_part2.Rmd` as a kind of overall visualisation of the data. Specific questions might be addressed in smaller reports using the output-files of `MTXQC_part2.Rmd`.

I furthermore suggest to process both type of analysis - stringent and less stringent - to get an impression at what points the manual validation of distinct intermediates might be useful.

## At the end...

So far you have used MTXQCvX2 to generate two reports: 
  1. one summarising the quality of the generated data and 
  2. a first statistical overview about the content of your data. 
  
With this the tutorial ends and refers to the plenty of detailed information scattered in a number of additional chapters of this documentation.
The FAQ section tries to guide you through more specific settings and introduces you to the flexibility of MTXQCvX2.

Since every metabolomics experiment has it's own purpose and reasoning I want to point out, that MTXQCvX2 does not want to provide a magical tool giving the perfect solution for everyone. It rather tries to provide a common platform for discussions, information exchange and inspiration by reducing the time that has to be spend on "the boring part of research". There is no limit to make MTXQC your own perfect tool writing your own reports and extensions. Feel free and hoepfully motivated to share your report as a template with your colleagues.
  
