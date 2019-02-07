# MTXQCvX_part4.Rmd - Metmax parser

## This section explains ...

- what MTXQCvX_part4.Rmd does
- how do input files need to look like
- which files are generated
- what the distinct checkboxes mean



This module provides the generation of suitable input files for MTXQCvX2 based on spreadsheet exported information by tools like metmax. 


## Input files
### Quantification - PeakAreas.csv

In order to perform absolute quantification of 

You need a file containing all extracted peak areas for each metabolite and file^[Tools/Options/Retention analysis, Parameter: Area]. The header of metmax-extracted files looks like shown below (see table 1). Please, remember to delete the second header row, representing the column loads for each file before saving as csv-file. Otherwise you end up with weird imported dataframes in R.
Quantification masses have to be updated while processing in ChromaToF prior the export of the data e.g., with a reference search^[See `vignette/ReferenceSearch`] or using statistical compare. pSIRM experiments require the definition of pTop5 masses^[Extended list of quant masses considering isotope incorporation] instead of top5 masses in the reference in order to take into account the shift of intensities induced by the application of stable isotopes^[Mandatory columns: name, mass, files]



name    mass     ri   row.load   file_1   file_2    file_x
-----  -----  -----  ---------  -------  -------  --------
Lac      219   1051       0.76    15423   135444    465486
Pyr      174   1042       0.65    56978    46888   4354544
Cit      273   1805       0.99     1326    23321    132121

MTXQCvX_part4 takes care of the formatting and correct column names of the peak areas file and saves it^[`input/quant/quantMassAreasMatrix.csv`].  MTXQCvX_part4 generates also the file PeakDensities-Chroma.csv^[`input/gc/PeakDensities-Chroma.csv`], in case you have selected the option to include sum of area normalisation while knitting this module.


### Isotope incorporation - MIDs.csv^[Required for `calculation isotope incorporation`]

In order to determine the incorporation of stable isotopes MTXQCvX2 requires as an input the mass isotopomer distributions (MIDs) for each intermediate and measurement^[Tools/Options/Isotope concentrator; Parameter: IntensityOfMass]. Fragments for each intermediate have to be pre-defined in metmax at Tools/Options/metabolite masses. They can be imported^[`inst/template_files/MetMax_MIDs.txt`] or manually specified each by each. An example of the metmax output is shown in table 2. The output has to be saved as csv-file, including the deletion of the partial row `column.load`, respectively^[Mandatory columns: name, mass, files].



name    mass     ri   row.load   file_1    file_2   file_x
-----  -----  -----  ---------  -------  --------  -------
Lac      219   1051       0.85    31026   5165829     5829
Lac      220   1051       0.85     3607    662277      277
Lac      221   1051       0.85     1222    111481       81
Lac      222   1051       0.85      188   1003494    10023
Lac      223   1051       0.85        0     33542      342

MTXQCvX_part4 calculates the stable isotope incorporation and exports DataMatrix.csv as well as pSIRM_SpectraData.csv^[`input/inc/DataMatrix` & `pSIRM_SpectraData.csv`]. The mathematics behind are outlined in [@Pietzke2014]

**Important**: Extracted MIDs have to match with defined mass couples for each metabolite in MTXQCvX2^[`config_mtx/incorpo_calc_masses.csv`]. Please refer for more details to `vignettes/config_mtx-files`.


### Derivatisation efficiency - mz73.csv^[Required for: `sum of area normalisation`]

The extraction of intensities for the ion $m/z$ 73 works analogous to the extraction of MIDs^[Tools/Options/Isotope concentrator; Parameter: IntensityOfMass]. Mass ranges have to be defined for each intermediate for the mass 73 by defining starting and end mass with 73. MTXQCvX_part4 generates the file MassSum-73.csv^[`input/gc/MassSum-73.csv`]. Check `inst\template_files\` for reference. Hopefully soon a new metmax button extracting specific intensities across the batch.

