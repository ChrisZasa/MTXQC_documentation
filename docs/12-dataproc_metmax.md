---
always_allow_html: yes
---


```r
source("example/R/fcn_documentation.R")
```

```
## 
## Attaching package: 'dplyr'
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

```r
library(kableExtra)
library(dplyr)
library(magrittr)

options(kableExtra.html.bsTable = T)
```

# Data Processing - Metmax{#metmaxproc}

## Resampling

## 1D-basic

## Reference search



## Export for Metmax

## Data extraction with Metmax{#metmax-dataextr}
### Quantification - PeakAreas.csv^[Required for: all parameter, just not `calculation stable isotope incorporation`]

In order to perform absolute quantification you need a file containing all extracted peak areas for each metabolite and file^[Tools/Options/Retention analysis, Parameter: Area]. The header of metmax-extracted files looks like shown below (see table 1). Please, remember to delete the second header row, representing the column loads for each file before saving as csv-file. Otherwise you end up with weird imported dataframes in R.

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

MTXQC_part4 takes care of the formatting and correct column names of the peak areas file and saves it in `input/quant/quantMassAreasMatrix.csv`.  MTXQC_part4 generates also the file PeakDensities-Chroma.csv and saves it in `input/gc/PeakDensities-Chroma.csv` in case you have selected the option to include sum of area normalisation while knitting this module.

### Isotope incorporation - MIDs.csv^[Required for `calculation isotope incorporation`]

In order to determine the incorporation of stable isotopes MTXQCvX2 requires as an input the mass isotopomer distributions (MIDs) for each intermediate and measurement^[Metmax: Tools/Options/Isotope concentrator; Parameter: IntensityOfMass]. Fragments for each intermediate have to be pre-defined in metmax in the menue Tools/Options/metabolite masses. 

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

MTXQCvX_part4 calculates the stable isotope incorporation and exports DataMatrix.csv as well as pSIRM_SpectraData.csv saved in `input/inc/DataMatrix` \& `pSIRM_SpectraData.csv`, respectively. The mathematics behind are outlined in [@Pietzke2014]

**Important:**
Extracted MIDs have to match with defined mass couples for each metabolite in MTXQCvX2 defined in `config_mtx/incorpo_calc_masses.csv`. Please refer for more details in chapter \@ref(config).

### Derivatisation efficiency - mz73.csv^[Required for: `sum of area normalisation`]

The extraction of intensities for the ion $m/z 73$ works analogous to the extraction of MIDs^[Tools/Options/Isotope concentrator; Parameter: IntensityOfMass]. 

Mass ranges have to be defined for each intermediate for the mass 73 by defining starting and end mass with 73. MTXQCvX_part4 generates the file and saves it in `input/gc/MassSum-73.csv`. Check `inst\template_files\` for reference. Hopefully soon a new metmax button extracting specific intensities across the batch.
