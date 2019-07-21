---
always_allow_html: yes
---


```
## 
## Attaching package: 'dplyr'
```

```
## The following object is masked from 'package:kableExtra':
## 
##     group_rows
```

```
## The following objects are masked from 'package:stats':
## 
##     filter, lag
```

```
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
```

# Data Processing for Metmax{#metmaxproc}

The following steps are done in ChromaToF on the raw data exported from the machine. I highly recommend to create a local copy of your data and then import it into ChromaToF. ChromaToF is not the fastest software and the server doesn't help for sure with that.

For each data processing (DP) method you need to define tasks by checking boxes at the top of the window. With each ticked box the related parameter that can be modified are listed below that list of tasks. So always remeber to scroll down, and after setting parameters, scroll up and check your ticks another time. 

In general you first adjust the choice of DP method first and apply it subsequently - choose one file, right click and choose *Process data*. Select all files and the DP method. 

## Import data into ChromaToF

Create a new project folder in the menu `Acquired Samples` and rename it, e.g., with the date and project name. Click on the folder to activate it. 

Now you can move down a window, just right click somewhere in this window and choose *Import data*. Select your `.SMP` files and wait until ChromaToF is done.

## DP - Resampling
Resampling is commonly applied and results into a data transformation enabling an improved detection of low abundant peaks and a reduction of noise. (Maybe include an example?)

The processing methods requires to tick the task `Export data file`. Subsequently, you are asked to define an output folder and the following paramter:

  * Reduction rate: 4
  * From the beginning to end of the file
  * `.peg`-files
  
In the next step the generated files have to be re-imported into a subfolder in `Acquired Samples` in ChromaToF.
  
  * Create subfolder called `resample` in ChromaToF
  * Right-click file window below
  * Import `.peg`-files


## DP - 1D-basic

Please check the following task in ChromaToF `Data Processing (DP) Methods`:

  * Baseline
  * Peak Find
  * Library Search
  * Calculate Area / Height
  * Retention Index Method

**Baseline**

  - enter baseline tracking from `start of the run` until `end of run` 
  - baseline offset 1
  - number of data points for smoothing: auto
  
**Peak Find**

  - peak width: 4
  - maximum number of unknown peaks to find: 600
  - S/N: 50.0
  - library identity: normal
  - library search mode: forward
  - number of library hits returned: 10
  - min. molecular weigth allowed: 0
  - max. molecular weight allowed: 1500
  - mass threshold: 0
  - min. similarity match: 0
  - Add libraries: gmd-merged-kempa
  
**Calculate Area / Height**

  - enter mass to use: U
  
**Retention Index Method**

  - choose your retention index method
  
### Create the Retention Index Method{#createri}

Before proceeding with applying processing method you need to prepare the Retention Index Method. 

Create a new Retention Index Method:

  * Scroll down in the main menu and click on Retention Index Methods
  * Right click on the white in the window below
  * Select new
  * Rename it
  
This creates an empty table in the main window. Use the blue plus sign and add nine rows. If you cannot click on the plus, make sure you clicked the name of the retention indey method before.

Adjust the entries the following way:

  * Change names: #c10, #c12, #c15, #c17, #c19, #c22, #c28, #c32, #c36
  * Retention Index is equal to the product of number of carbons and 100 (RI of #c10 is 1000)
  * Verification Mass: 85
  
Go back to your measurements and select a wash run. Select the alkane masses, normally saved in shortcut B, and collect the retention times. Add these values in the retention index method.
All done, select the retention index method in data processing methods.

Run the processing method `1D-basic` over all your files.

## Reference search
### Create a reference in ChromaToF



### Process your reference search

Check the task and following parameter:

  * Apply Reference(s):
  
    - S/N: 10 - 50
    - Mass Threshold: 0
    - Add the references
  
**Very important** Always scroll up and check the ticked tasks again. **Always... and really always** when you change the reference ChromaToF checks the PeakFind option for you. But this we definitely do not want since the basic processing just pre-annotated all peaks that were detected and identifiable. If you forget to uncheck the box only the compounds listed in your reference are annotated, all other annotations are replaced with unknown and a number.

## Export for Metmax

Check tasks in `data processing methods:

  * Export peak information ASCII CSV format
    - define the directory where files should be saved
    - field separator: TAB
    - filter: choose all but not **Not Founds**
    - sort by: Name, ascending
    - exportet information:
      * Name
      * Concerns
      * Quant Masses
      * Area
      * Expected Ion Ratio 1
      * Calibration
      * Match
      * Quant S/N
      * Similarity
      * Type
      * Concentration
      * Sample Concentration
      * 1st Dimension Time (s)
      * Retention Index
      * R.T. (s)
      * Reverse
      * Conc. Units
      * 2nd Dimension Time (s)



## Data extraction with Metmax{#metmax-dataextr}
### Quantification - PeakAreas.csv^[Required for: all parameter, just not `calculation stable isotope incorporation`]

In order to perform absolute quantification you need a file containing all extracted peak areas for each metabolite and file^[Tools/Options/Retention analysis, Parameter: Area]. 

The header of metmax-extracted files looks like shown below (see table 1). Please, remember to delete the second header row, representing the column loads for each file before saving as csv-file. Otherwise you end up with weird imported dataframes in R.

Quantification masses have to be updated while processing in ChromaToF prior the export of the data e.g., with a reference search (see section \@ref(refsearch)] or using statistical compare. 
pSIRM experiments require the definition of pTop5 masses; an extended list of quant masses considering isotope incorporation instead of top5 masses in the reference in order to take into account the shift of intensities induced by the application of stable isotopes^[Mandatory columns: name, mass, files] (see *somewhere*).


<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:right;"> mass </th>
   <th style="text-align:right;"> ri </th>
   <th style="text-align:right;"> row.load </th>
   <th style="text-align:right;"> file_1 </th>
   <th style="text-align:right;"> file_2 </th>
   <th style="text-align:right;"> file_x </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Lac </td>
   <td style="text-align:right;"> 219 </td>
   <td style="text-align:right;"> 1051 </td>
   <td style="text-align:right;"> 0.76 </td>
   <td style="text-align:right;"> 15423 </td>
   <td style="text-align:right;"> 135444 </td>
   <td style="text-align:right;"> 465486 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pyr </td>
   <td style="text-align:right;"> 174 </td>
   <td style="text-align:right;"> 1042 </td>
   <td style="text-align:right;"> 0.65 </td>
   <td style="text-align:right;"> 56978 </td>
   <td style="text-align:right;"> 46888 </td>
   <td style="text-align:right;"> 4354544 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Cit </td>
   <td style="text-align:right;"> 273 </td>
   <td style="text-align:right;"> 1805 </td>
   <td style="text-align:right;"> 0.99 </td>
   <td style="text-align:right;"> 1326 </td>
   <td style="text-align:right;"> 23321 </td>
   <td style="text-align:right;"> 132121 </td>
  </tr>
</tbody>
</table>

MTXQC_part4 takes care of the formatting and correct column names of the peak areas file and saves it in `input/quant/quantMassAreasMatrix.csv`.  
MTXQC_part4 generates also the file PeakDensities-Chroma.csv and saves it in `input/gc/PeakDensities-Chroma.csv` in case you have selected the option to include sum of area normalisation while knitting this module.

### Isotope incorporation - MIDs.csv^[Required for `calculation isotope incorporation`]

In order to determine the incorporation of stable isotopes MTXQCvX2 requires as an input the mass isotopomer distributions (MIDs) for each intermediate and measurement^[Metmax: Tools/Options/Isotope concentrator; Parameter: IntensityOfMass]. 
Fragments for each intermediate have to be pre-defined in metmax in the menue Tools/Options/metabolite masses. 

You can import a prepared list (have a look at `inst/template_files/MetMax_MIDs.txt`) or specify each entry manually. An example of the metmax output is shown in table 2. The output has to be saved as csv-file, including the deletion of the partial row `column.load`, respectively^[Mandatory columns: name, mass, files].

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> name </th>
   <th style="text-align:right;"> mass </th>
   <th style="text-align:right;"> ri </th>
   <th style="text-align:right;"> row.load </th>
   <th style="text-align:right;"> file_1 </th>
   <th style="text-align:right;"> file_2 </th>
   <th style="text-align:right;"> file_x </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Lac </td>
   <td style="text-align:right;"> 219 </td>
   <td style="text-align:right;"> 1051 </td>
   <td style="text-align:right;"> 0.85 </td>
   <td style="text-align:right;"> 31026 </td>
   <td style="text-align:right;"> 5165829 </td>
   <td style="text-align:right;"> 5829 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lac </td>
   <td style="text-align:right;"> 220 </td>
   <td style="text-align:right;"> 1051 </td>
   <td style="text-align:right;"> 0.85 </td>
   <td style="text-align:right;"> 3607 </td>
   <td style="text-align:right;"> 662277 </td>
   <td style="text-align:right;"> 277 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lac </td>
   <td style="text-align:right;"> 221 </td>
   <td style="text-align:right;"> 1051 </td>
   <td style="text-align:right;"> 0.85 </td>
   <td style="text-align:right;"> 1222 </td>
   <td style="text-align:right;"> 111481 </td>
   <td style="text-align:right;"> 81 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lac </td>
   <td style="text-align:right;"> 222 </td>
   <td style="text-align:right;"> 1051 </td>
   <td style="text-align:right;"> 0.85 </td>
   <td style="text-align:right;"> 188 </td>
   <td style="text-align:right;"> 1003494 </td>
   <td style="text-align:right;"> 10023 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lac </td>
   <td style="text-align:right;"> 223 </td>
   <td style="text-align:right;"> 1051 </td>
   <td style="text-align:right;"> 0.85 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 33542 </td>
   <td style="text-align:right;"> 342 </td>
  </tr>
</tbody>
</table>

MTXQC_part4 calculates the stable isotope incorporation and exports DataMatrix.csv as well as pSIRM_SpectraData.csv saved in `input/inc/DataMatrix` \& `pSIRM_SpectraData.csv`, respectively. The mathematics behind are outlined in [@Pietzke2014]

**Important:**
Extracted MIDs have to match with defined mass couples for each metabolite in MTXQCvX2 defined in `config_mtx/incorpo_calc_masses.csv`. Please refer for more details in chapter \@ref(config).

### Derivatisation efficiency - mz73.csv^[Required for: `sum of area normalisation`]

The extraction of intensities for the ion $m/z 73$ works analogous to the extraction of MIDs^[Tools/Options/Isotope concentrator; Parameter: IntensityOfMass]. 

Mass ranges have to be defined for each intermediate for the mass 73 by defining starting and end mass with 73. MTXQC_part4 generates the file and saves it in `input/gc/MassSum-73.csv`. Check `inst\template_files\` for reference. Hopefully soon a new metmax button extracting specific intensities across the batch.
