# Frequently Asked Questions{#FAQ}

Please keep in mind that thorughout this section the project-folder is referred as 'psirm_glucose'.

If you do not find an answer to your question - please create an issue directly in the github repository^[check https://www.github.com/ChrisZasa/MTXQC_documentation/] or write an e-mail.

## How do I create my annotation-file?{#createannotation}

The annotation file relate file names with experimental conditions or specify quantification standards in your batch. Two columns - **File and Type** - are obligatory and have to be present in the annotation file. In the case of their absence `MTXQCvX_part1.Rmd` stops processing and shows an error message.

A quick way to generate an annotation file is described below:

  1. Copy the first row / header of `quantMassAreaMatrix.csv` file
  2. Paste & transpose the content into a new Excel-File into column A
  3. Change the first entry: Metabolite -> File
  4. Remove the entry QuantMasses at the very end of the column A
  5. Add the column Type and specify each file either as **sample**, **Q1_dilution** or **addQ1_dilution**^[see for further details additionalQuant]
  6. Add more columns specifying your experimental conditions, e.g., Cellline and Treatment^[optimal: two to three parameter, at maimumx: four parameter. Consider combinations of parameter, e.g., HCT116-control, HCT116-BPTES]
  7. Save the content as `csv-file` in, e.g., `psirm_glucose/input/...`

## How do I create the file `sample_extracts.csv`?{#createsampleextracts}

The `sample_extracts.csv` file is required in order to determine automatically absolute quantities in the manner of pmol/1e+6 cells or pmol/mg tissue in the `CalculationFileData.csv`.

This file requires two obligatory columns - **Extract_vol** and **Unit**^[Define: count, mg or ul]. Please specify for each experimental condition the amount of extracted cells (count), tissue (mg) or volume of blood/plasme (ul) in the unit shown in the brackets.  
The names of the columns of the experimental conditions have to match up with the annotation file. Save the file in the folder `psirm_glucose/input/...`. 

If the defined experimental conditions do not match up with the annotation `MTXQC_part1.Rmd` exit data processing. A template file is saved for review and usage at `inst/template_files/...` 

## How do I define an internal extraction standard other than cinnamic acid?{#definternal}

MTXQCvX2 allows the specification of project-specific internal extraction standards. The only thing you need to do is to define the corresponding compounds as an internal standard in the `config_mtx/conversion_metabolite.csv` file. To do so, add to the compound in last column `Standard` the entry `InternalStandard`.

The definition of an internal standard requires the file 'InternalStandard.csv' in the folder `input/gc` since it is used for the evaluation of normalisation factors in MTXQC_part1. 

**Scenario 1** Maui-project and Cinnamic acid

For an classical pSIRM experiment in the Kempa lab we are using cinnamic acid. The evaluation of this compound has been integrated into Maui. Peak areas of cinnamic acid are exported from the container called `cinAcid`. The exported file^[see section \@ref(mauiexports)] has to be renamed to `InternalStandard.csv` though and moved to `psirm_glucose/input/gc/...`.

**Scenario 2** Maui-project and different internal standard

If you have used a different compound as an internal extraction standard you might need to extract the peak areas of this compound from the file `quantPeakAreasMatrix.csv` and save it in the folder `psirm_glucose/input/gc/InternalStandard.csv`, respectively. Prerequisite here - you have annotated the compound in your Maui-project.

**Scenario 3** Metmax-project

In the case you used metmax the module `MTXQC_part4.Rmd` takes care for you of the generation of the `InternalStandard.csv` based on the definition in `conversion_metabolite.csv` and provided peak areas^[see chapter \@ref(Metmax)]. 
This procedure is independent what standard you have defined. It only requires the annotation of your compound in chromtof and successful export with metmax.

## How do I combine multiple MAUI-projects into a single MTXQC-project?{#multipleproj}

Certain circumstances might wish you to combine _multiple MAUI-projects_ into one MTXQC-project. This might be the case when you run the same samples in split and splitless mode on the machine or your experimental setup has been measured in multiple batches in order to avoid derivatisation effects.

It is highly recommended to combine the input files derived from a different Maui projects beforehand the analysis. In that way you have only to work with a single file `CalculationFileData.csv`^[stored in `psirm_glucose/output/quant/...`] containing all data of the your experiment.

The herein described process provides a quick way how to combine the exported files from different Maui projects. The script `combine-sets.R`^[inst/template_files/...] automatically saves all combined files into the correct `input` folder. Just update the folder and subfolder names. All the rest has been taken care of for you.

1. Create in the MTXQC-project folder (e.g., `psirm_glucose/`) a new folder called `raw-data`
2. Create a subfolder for each Maui-project in `psirm_glucose/raw_data/...`
3. Copy into this folder all your Maui-derived input files altogether
4. Update the parameter of `combine-sets.R`, meaning folder name definitions,  file
5. Execute the  R script
6. Merged files have been generated and copied into the corresponding folder: `psirm_glucose/input-folder/gc/...` or `psirm_glucose/input-folder/inc/...`
7. Copy the renamed `ManualQuantTable.tsv` files of each Maui project into `psirm_glucose/input/quant/...`

## How do I extend conversion_metabolite.csv{#extendconse}

At a certain point you might want to add a compound or derivate that is not part of the current setup of metabolites. For simplicity we assume you want to add an intermediate for quantitative and isotope incorporation^[Just skip this if this is not required].

In order to include this new compound you need to add information to the following files in `config_mtx`:

  * `conversion_metabolite.csv`
  * `letter_pathway_complete.csv`
  * `incorp_calc_masses.csv`
  * `mid_backups.csv`
  
If you desire the absolute quantification of this new compound you most probably need to either: (1) include the compound in quant-standards or (2) measure additional quantification standards. Please read sections \@ref(quantquant), \@ref(#quantind) and \@ref(addqadds) how to proceed.

**`conversion_metabolite.csv`**

  * Define the three variations - Metabolite, Metaboite_short, Lettercode - of the compound name by analogy with the present list (text)
  * Q1_value: check only if this compound is part of a quantification mix (x)
  * Mass_Pos: define the m/z-value reflecting the shift of intensity in case of the incorporation of stable isotopes (numeric)
  * SE_sel: check only if MID exports are available (x)
  * Q_sel:
  * nopsirm: check if this compound should not considered for isotope inc. (x)
  * Standards: define as *InternalStandard* if applicable
  
** `letter_pathway_complete.csv`

** `ìncorp_calc_masses.csv`

Define the couple of m/z-values for your compound: 
  - m0 - mono-isotopic mass/charge value and 
  - minc - mass/charge value reflecting shift of intensities
  
In case you want to define more than one pair of m/z-values have a look at the defined TCA-cycle intermediates.

** `mid_backups.csv`


## How do I prepare my data in ChromaToF for manual data validation{#howmanval-chroma}

## How do I perform the manual validation with MTXQC_part3?{#howmanval-part3}

## How do I distinguish between standard and additional quantification standards?{#quantquant}

## How do I define my own quantification standards?{#quantind}

## How do I integrate additional quantification standards into MTXQCvX2{#addqadds}







