# Tutorial: MTXQCvX2 for for Metmax-extracted projects{#metmax}

## Prerequisites

- You have processed and annotated your intermediates in ChromaToF
- You have defined the correct quantification masses in the reference search
- You have exported the data in `.txt` files
- You have used metmax^[http://gmd.mpimp-golm.mpg.de/apps/metmax/default.htm] to extract the data (see chapter \@ref(metmaxproc))

## In a nutshell
 
1. Setup a new R-project
2. Copy MTXQCvX2 files
3. *Knit with parameter:* `MTXQC_part4.Rmd`
4. *Knit with parameter:* `MTXQC_init.Rmd`
5. Copy input files into corresponding folders
6. Create annotation.csv and sample_extracts.csv files (see section \@ref() \& \@ref())
7. Modify metabolite names in `conversion_metabolite.csv` column **Metabolite_manual**
8. Define the internal standard and/or alkanes in conversion_metabolite.csv (see section \@ref(definternal) \& \ref(defalkanes))
9. *Knit with parameter:* `MTXQC_ExperimentalSetup.Rmd`
10. *Knit with parameter:* `MTXQC_part1.Rmd`
11. *Knit with parameter:* `MTXQC_part2.Rmd`
12. If required - proceed with `MTXQC_part3.Rmd` for ManualValidation

## Tutorial dataset


## In detail
R-projects provide a secure environment to handle your data from the processing in MTXQCvX2 until the final reports and analysis. Think about it as a big bubble containing and carrying all your data and analysis savely from one place to the other undisturbed of the outside changes.

  * Open R-studio and create a new project following: `File -> New project -> New Project -> New Directory`
  * Call the directory `tutorial_metmax` and the preferred subdirectory. 
  * I recommend to start each project in a new session (tick the box at the bottom of the dialogue box).

### Copy MTXQCvX2 template files

* Download the current version of MTXQCvX2 called fluffy adventure^[github.com/ChrisZasada/fluffy_adventure]
* Open and extract the zip-folder
* Copy all folders and files into your R-project `tutorial_metmax`

### Process `MTXQC_init.Rmd`

The module `MTXQC_init.Rmd` performs two important steps: 
  1. Check-up package installation
  2. Creation of project-folder
  
The project folder is supposed to provide a tidy structure while data processing and analysis and contains several pre-defined folder. Besides the following folders: `input`, `output` and `figures´ you see a detailed subfolder structure. You find more details about each folder and additional suggestion how to use project-folder in chapter \@ref(init). 

All you need to do is to process the `MTXQC_init.Rmd`. The following procedure is how you process all `.Rmd`-files of MTXQCvX2:

  * Click on the small black triangle next to the ball of yarn in the R-Studio toolbar
  * Choose `Knit with Parameters...`
  
If the `.Rmd`-file contains defined parameters a shiny dialogue pops up and provides an interactive selection based on the document. In the case of `MTXQC_init.Rmd` you are asked to define a so-called project-folder.

  * **Define the name of the project-folder:** qtx_london

Check in the files tab of R-Studio, browse through it and get familiar with the structure. This is the home of your metabolomics projects data analysis.

### Process MTXQC_part4





## Annotation-file

The annotation file relate file names with experimental conditions or specify quantification standards in your batch. Two columns - **File and Type** - are obligatory and have to be present in the annotation file. In the case of their absence `MTXQCvX_part1.Rmd` stops processing and shows an error message.

A quick way to generate an annotation file is described below:

1. Copy all file names from a file of your choice
2. Paste & transpose the content into a new Excel-File into column A
3. Call column A -> File
4. Optional: Remove any non-file name entry in this column
5. Add the column Type and specify each file either as **sample**, **Q1_diluation**, ,**addQ1_dilution**^[see for further details additionalQuant]
6. Add more columns specifying your experimental conditions, e.g., Cellline and Treatment^[optimal: two-three parameter, max: four parameter. Consider possible combinations, e.g., HCT116-control, HCT116-BPTES]
7. Save the content as `csv-file` in the `psirm_glucose/input/...`

## Sample_extracts-file

The `sample_extracts.csv` file is required in order to determine automatically absolute quantities in the manner of pmol/1e+6 cells or pmol/mg tissue in the `CalculationFileData.csv`.

This file requires two obligatory columns - **Extract_vol** and **Unit**^[Define: count, mg or ul]. Please specify for each experimental condition the amount of extracted cells (count), tissue (mg) or volume of blood/plasme (ul) in the unit shown in the brackets.  
The names of the columns of the experimental conditions have to match up with the annotation file. Save the file in the folder `psirm_glucose/input/...`. 

If the defined experimental conditions do not match up with the annotation `MTXQCvX2_part1.Rmd` exit data processing. A template file is saved for review and usage at `inst/template_files/...`

## Update metabolite names in `conversion_metabolite.csv` 

The file `conversion_metabolite.csv`, saved in `config_mtx/`, serves as a kind of translational table. It defines alternative version of metabolite library names that come in handy to plot data using shorter metabolite names. This file is also used to define settings and standard classifications. Detailed information for each column of the file are shown here: REF

### Match your annotation with library names

Prior the analysis you need to match the names of your intermediates with the conversion_metabolite.csv file. You need to update or add the corresponding name for each intermediate in the column **Metabolite_manual**.

General suggestion for naming conventions in ChromaToF: Metabolite_Derivate, e.g., Lactic acid_(2TMS). In case of the presence of main- (MP) and byproducts (BP) use: Metabolite_Derivate_MP/BP, e.g., Glucose_(1MEOX)(5TMS)_MP.

If you have annotated intermediates that are not included so far in this table please follow the instructions how to extend `conversion_metabolite.csv`.REF

### Define your internal standards and alkanes

MTXQCvX2 allows the specification of project-specific internal standards. Corresponding compounds have to be marked as an internal standard in `conversion_metabolite.csv` by adding the tag **InternalStandard** in the column Standard. 

If you check the box - InternalStandard in the parameter selection for `MTXQCvX2_part4.Rmd` the module searches in your input file for peak areas of the defined standard and extracts the information. It also generates the file `InternalStandard.csv` and stores it at `psirm_glucose/input/gc/...`.

In the same way alkanes are defined in `conversion_metabolite.csv`. Each alkane has to be flag tagged with **Alk** in the column Standard. This gives you the opportunity to implement customized mixtures of alkanes in order to determine the retention index. 
`MTXQCvX_part4.Rmd` recognises the flag tag and generates `Alcane_intensities.csv` based on your input file containing peak areas and saves it in `psirm_glucose/input/gc/...`^[It should be al**k**ane, I know, but Maui doesn't, unfortunately...].

The in-lab protocol considers nine alkanes from c10 to c36. Standard annotation includes an hashtag, e.g., #c10. If you use this annotation even Metmax would be able to determine the retention index.  
