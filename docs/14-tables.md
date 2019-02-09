---
always_allow_html: yes
---

# Appendix - Dictionary Tables{#tables}



This chapter shows the structure of all input or output csv-files that are referenced throughout the documentation. Please refer to the chapters for more detailed explanations.


## MTXQC base tables
### `config_mtx` tables

#### conv_filenames.csv{#app:filenames}

```
## 'data.frame':	10 obs. of  2 variables:
##  $ AssociatedFile: Factor w/ 10 levels "addQ","alkane_int",..: 4 2 7 8 10 9 5 1 6 3
##  $ Filename      : Factor w/ 10 levels " incorp_calc_masses.csv",..: 6 4 7 8 10 9 5 3 1 2
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> AssociatedFile </th>
   <th style="text-align:left;"> Filename </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> cin_acid </td>
   <td style="text-align:left;"> InternalStandard.csv </td>
  </tr>
  <tr>
   <td style="text-align:left;"> alkane_int </td>
   <td style="text-align:left;"> Alcane_intensities.csv </td>
  </tr>
  <tr>
   <td style="text-align:left;"> mz_73 </td>
   <td style="text-align:left;"> MassSum-73.csv </td>
  </tr>
  <tr>
   <td style="text-align:left;"> peak_densities </td>
   <td style="text-align:left;"> PeakDensities-Chroma.csv </td>
  </tr>
  <tr>
   <td style="text-align:left;"> sample_area </td>
   <td style="text-align:left;"> quantMassAreasMatrix.csv </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pSIRM_se </td>
   <td style="text-align:left;"> pSIRM_SpectraData.csv </td>
  </tr>
  <tr>
   <td style="text-align:left;"> inc </td>
   <td style="text-align:left;"> DataMatrix.csv </td>
  </tr>
  <tr>
   <td style="text-align:left;"> addQ </td>
   <td style="text-align:left;"> additional_quant1_values.csv </td>
  </tr>
  <tr>
   <td style="text-align:left;"> mass_li </td>
   <td style="text-align:left;"> incorp_calc_masses.csv </td>
  </tr>
  <tr>
   <td style="text-align:left;"> backups_mid </td>
   <td style="text-align:left;"> mid_backups.csv </td>
  </tr>
</tbody>
</table>

#### conv_filesnames_manVal.csv{#app:filenamesManVal}

```
## 'data.frame':	3 obs. of  2 variables:
##  $ AssociatedFile: Factor w/ 3 levels "inc","pSIRM_se",..: 3 2 1
##  $ Filename      : Factor w/ 3 levels "DataMatrix_manVal.csv",..: 3 2 1
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;">   </th>
   <th style="text-align:left;"> AssociatedFile </th>
   <th style="text-align:left;"> Filename </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> sample_area </td>
   <td style="text-align:left;"> quantMassAreasMatrix_manVal.csv </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> pSIRM_se </td>
   <td style="text-align:left;"> pSIRM_SpectraData_manVal.csv </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> inc </td>
   <td style="text-align:left;"> DataMatrix_manVal.csv </td>
  </tr>
  <tr>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> NA.1 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
</tbody>
</table>

#### DEPRICATED FILE: MQ_correction.csv

Not in use anymore since fluffy adventure!


```
## 'data.frame':	7 obs. of  3 variables:
##  $ Metabolite  : Factor w/ 7 levels "Alanine_(2TMS)_BP_RI:1097_IDENT:B+C",..: 1 2 3 6 7 4 5
##  $ Cor_factor  : num  12 12 6.33 11.82 2.41 ...
##  $ Target_value: num  134695 134695 83259 388544 65154 ...
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Metabolite </th>
   <th style="text-align:right;"> Cor_factor </th>
   <th style="text-align:right;"> Target_value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Alanine_(2TMS)_BP_RI:1097_IDENT:B+C </td>
   <td style="text-align:right;"> 12.00 </td>
   <td style="text-align:right;"> 134695.25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Alanine_(3TMS)_MP_RI:1367_IDENT:B+C </td>
   <td style="text-align:right;"> 12.00 </td>
   <td style="text-align:right;"> 134695.25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fructose_(1MEOX)(5TMS)_BP_RI:1872_IDENT:B+C </td>
   <td style="text-align:right;"> 6.33 </td>
   <td style="text-align:right;"> 83259.33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Glucose_(1MEOX)(5TMS)_MP_RI:1886_IDENT:B+D </td>
   <td style="text-align:right;"> 11.82 </td>
   <td style="text-align:right;"> 388543.52 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Glycerol_(3TMS)_MP_RI:1280_IDENT:C+D </td>
   <td style="text-align:right;"> 2.41 </td>
   <td style="text-align:right;"> 65153.65 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Fructose_(1MEOX)(5TMS)_MP_RI:1862_IDENT:B+C </td>
   <td style="text-align:right;"> 6.33 </td>
   <td style="text-align:right;"> 83259.33 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Glucose_(1MEOX)(5TMS)_BP_RI:1904_IDENT:B+D </td>
   <td style="text-align:right;"> 11.82 </td>
   <td style="text-align:right;"> 388543.52 </td>
  </tr>
</tbody>
</table>


### `config_files` tables

These tables are supposed to be modified in relation to the individual needs of a project.

#### conversion_metabolite.csv {#app:conse}

```
## 'data.frame':	10 obs. of  3 variables:
##  $ Column.name: Factor w/ 10 levels "Lettercode","Mass_Pos",..: 4 3 5 1 8 2 9 7 6 10
##  $ Description: Factor w/ 10 levels "Checked if quant1:1 value available",..: 9 7 10 6 1 8 4 3 5 2
##  $ Value      : Factor w/ 8 levels "","#Alanine (2TMS)",..: 2 6 5 4 8 3 8 8 1 7
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Column.name </th>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:left;"> Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Metabolite_manual </td>
   <td style="text-align:left;"> Manual defined metabolite name </td>
   <td style="text-align:left;"> #Alanine (2TMS) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Metabolite </td>
   <td style="text-align:left;"> Library name of the metabolite </td>
   <td style="text-align:left;"> Alanine_(2TMS)_BP_RI:1097_IDENT:B+C </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Metabolite_short </td>
   <td style="text-align:left;"> Short version of library name of the metabolite </td>
   <td style="text-align:left;"> Alanine_(2TMS) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lettercode </td>
   <td style="text-align:left;"> Lettercode version of metabolite name </td>
   <td style="text-align:left;"> Ala_2TMS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Q1_value </td>
   <td style="text-align:left;"> Checked if quant1:1 value available </td>
   <td style="text-align:left;"> x </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mass_Pos </td>
   <td style="text-align:left;"> m/z-value corresponding to m_inc </td>
   <td style="text-align:left;"> 118 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SE_sel </td>
   <td style="text-align:left;"> Evaluation of the MIDs </td>
   <td style="text-align:left;"> x </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Q_sel </td>
   <td style="text-align:left;"> Evaluation for absolute quantification </td>
   <td style="text-align:left;"> x </td>
  </tr>
  <tr>
   <td style="text-align:left;"> nopsirm </td>
   <td style="text-align:left;"> Exclusively for absolute quantification </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Standards </td>
   <td style="text-align:left;"> Defined as standard </td>
   <td style="text-align:left;"> InternalStandard, Alk </td>
  </tr>
</tbody>
</table>

#### letter_pathway_complete.csv{#app:pathway}

```
## 'data.frame':	100 obs. of  7 variables:
##  $ Letter_Derivate: Factor w/ 69 levels "2HG","2OG","3PGA",..: 1 2 3 4 5 5 6 6 7 8 ...
##  $ Lettercode     : Factor w/ 100 levels "2HG","2OG","3PGA",..: 1 2 3 4 6 5 8 7 9 10 ...
##  $ Pathway        : Factor w/ 9 levels "aa","glut","glyc",..: 2 9 3 4 5 5 1 1 1 1 ...
##  $ Pathway.1      : Factor w/ 9 levels "1-glyc","2-tca",..: 3 2 1 7 9 9 5 5 5 5 ...
##  $ Met_pathway    : Factor w/ 97 levels "1-glyc_DHAP_BP",..: 28 21 17 91 96 96 35 34 36 37 ...
##  $ Subs_class     : Factor w/ 11 levels "aa","amino sugar",..: 6 6 8 3 4 4 1 1 1 1 ...
##  $ Met_class      : Factor w/ 97 levels "aa_Ala_2TMS",..: 55 56 83 43 46 46 2 1 3 4 ...
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Letter_Derivate </th>
   <th style="text-align:left;"> Lettercode </th>
   <th style="text-align:left;"> Pathway </th>
   <th style="text-align:left;"> Pathway.1 </th>
   <th style="text-align:left;"> Met_pathway </th>
   <th style="text-align:left;"> Subs_class </th>
   <th style="text-align:left;"> Met_class </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 2HG </td>
   <td style="text-align:left;"> 2HG </td>
   <td style="text-align:left;"> glut </td>
   <td style="text-align:left;"> 3-glut </td>
   <td style="text-align:left;"> 3-glut_Glut_2hydroxy </td>
   <td style="text-align:left;"> organic acid </td>
   <td style="text-align:left;"> organic acid_Glut_2hydroxy </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2OG </td>
   <td style="text-align:left;"> 2OG </td>
   <td style="text-align:left;"> tca </td>
   <td style="text-align:left;"> 2-tca </td>
   <td style="text-align:left;"> 2-tca_Glut_2oxo </td>
   <td style="text-align:left;"> organic acid </td>
   <td style="text-align:left;"> organic acid_Glut_2oxo </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 3PGA </td>
   <td style="text-align:left;"> 3PGA </td>
   <td style="text-align:left;"> glyc </td>
   <td style="text-align:left;"> 1-glyc </td>
   <td style="text-align:left;"> 1-glyc_PGA </td>
   <td style="text-align:left;"> phosphate </td>
   <td style="text-align:left;"> phosphate_PGA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> A </td>
   <td style="text-align:left;"> A </td>
   <td style="text-align:left;"> nucleobase </td>
   <td style="text-align:left;"> 7-nucleobase </td>
   <td style="text-align:left;"> 7-nucleobase_Adenosine </td>
   <td style="text-align:left;"> nucleobase </td>
   <td style="text-align:left;"> nucleobase_Adenosine </td>
  </tr>
</tbody>
</table>

#### incorp_calc_masses.csv{#app:incorp}

```
## 'data.frame':	90 obs. of  3 variables:
##  $ Metabolite: Factor w/ 45 levels "Alanine_(2TMS)_BP_RI:1097_IDENT:B+C",..: 1 1 2 2 3 3 4 4 5 5 ...
##  $ Mass_mz   : int  116 118 188 190 245 249 273 275 273 276 ...
##  $ LI_MID    : Factor w/ 2 levels "m0","minc": 1 2 1 2 1 2 1 2 1 2 ...
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Metabolite </th>
   <th style="text-align:right;"> Mass_mz </th>
   <th style="text-align:left;"> LI_MID </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Alanine_(2TMS)_BP_RI:1097_IDENT:B+C </td>
   <td style="text-align:right;"> 116 </td>
   <td style="text-align:left;"> m0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Alanine_(2TMS)_BP_RI:1097_IDENT:B+C </td>
   <td style="text-align:right;"> 118 </td>
   <td style="text-align:left;"> minc </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Alanine_(3TMS)_MP_RI:1367_IDENT:B+C </td>
   <td style="text-align:right;"> 188 </td>
   <td style="text-align:left;"> m0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Alanine_(3TMS)_MP_RI:1367_IDENT:B+C </td>
   <td style="text-align:right;"> 190 </td>
   <td style="text-align:left;"> minc </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Aspartic acid_(2TMS)_BP_RI:1433_IDENT:A+C </td>
   <td style="text-align:right;"> 245 </td>
   <td style="text-align:left;"> m0 </td>
  </tr>
</tbody>
</table>

#### quant1_values.csv{#app:quant1}

```
## 'data.frame':	70 obs. of  3 variables:
##  $ Letter_Derivate: Factor w/ 70 levels "2HG","2OG","3PGA",..: 1 2 3 4 5 6 7 8 9 10 ...
##  $ Quant1_v4      : int  57270 34220 43480 7400 18710 134700 11480 22710 15030 11220 ...
##  $ Quant1_v3      : int  57270 34220 43480 7400 18710 134700 11480 22710 15030 11220 ...
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Letter_Derivate </th>
   <th style="text-align:right;"> Quant1_v4 </th>
   <th style="text-align:right;"> Quant1_v3 </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 2HG </td>
   <td style="text-align:right;"> 57270 </td>
   <td style="text-align:right;"> 57270 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2OG </td>
   <td style="text-align:right;"> 34220 </td>
   <td style="text-align:right;"> 34220 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 3PGA </td>
   <td style="text-align:right;"> 43480 </td>
   <td style="text-align:right;"> 43480 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> A </td>
   <td style="text-align:right;"> 7400 </td>
   <td style="text-align:right;"> 7400 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Adenosine </td>
   <td style="text-align:right;"> 18710 </td>
   <td style="text-align:right;"> 18710 </td>
  </tr>
</tbody>
</table>

#### mid_backups.csv{#app:midbackup}

```
## 'data.frame':	224 obs. of  4 variables:
##  $ Metabolite    : Factor w/ 38 levels "Alanine_ beta-_(3TMS)_MP_RI:1435_IDENT:A+D",..: 1 1 1 1 2 2 2 2 3 3 ...
##  $ Mass.m.z.     : int  188 189 190 191 116 117 118 119 188 189 ...
##  $ BackupPeakArea: int  4960 876 307 53 2616179 323019 99834 19759 4960 876 ...
##  $ BackupMID     : num  0.8005 0.1414 0.0495 0.0086 0.8553 ...
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Metabolite </th>
   <th style="text-align:right;"> Mass.m.z. </th>
   <th style="text-align:right;"> BackupPeakArea </th>
   <th style="text-align:right;"> BackupMID </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Alanine_ beta-_(3TMS)_MP_RI:1435_IDENT:A+D </td>
   <td style="text-align:right;"> 188 </td>
   <td style="text-align:right;"> 4960 </td>
   <td style="text-align:right;"> 0.8005000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Alanine_ beta-_(3TMS)_MP_RI:1435_IDENT:A+D </td>
   <td style="text-align:right;"> 189 </td>
   <td style="text-align:right;"> 876 </td>
   <td style="text-align:right;"> 0.1414000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Alanine_ beta-_(3TMS)_MP_RI:1435_IDENT:A+D </td>
   <td style="text-align:right;"> 190 </td>
   <td style="text-align:right;"> 307 </td>
   <td style="text-align:right;"> 0.0495000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Alanine_ beta-_(3TMS)_MP_RI:1435_IDENT:A+D </td>
   <td style="text-align:right;"> 191 </td>
   <td style="text-align:right;"> 53 </td>
   <td style="text-align:right;"> 0.0086000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Alanine_(2TMS)_BP_RI:1097_IDENT:B+C </td>
   <td style="text-align:right;"> 116 </td>
   <td style="text-align:right;"> 2616179 </td>
   <td style="text-align:right;"> 0.8552984 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Alanine_(2TMS)_BP_RI:1097_IDENT:B+C </td>
   <td style="text-align:right;"> 117 </td>
   <td style="text-align:right;"> 323019 </td>
   <td style="text-align:right;"> 0.1056035 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Alanine_(2TMS)_BP_RI:1097_IDENT:B+C </td>
   <td style="text-align:right;"> 118 </td>
   <td style="text-align:right;"> 99834 </td>
   <td style="text-align:right;"> 0.0326384 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Alanine_(2TMS)_BP_RI:1097_IDENT:B+C </td>
   <td style="text-align:right;"> 119 </td>
   <td style="text-align:right;"> 19759 </td>
   <td style="text-align:right;"> 0.0064597 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Alanine_(3TMS)_MP_RI:1367_IDENT:B+C </td>
   <td style="text-align:right;"> 188 </td>
   <td style="text-align:right;"> 4960 </td>
   <td style="text-align:right;"> 0.8005000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Alanine_(3TMS)_MP_RI:1367_IDENT:B+C </td>
   <td style="text-align:right;"> 189 </td>
   <td style="text-align:right;"> 876 </td>
   <td style="text-align:right;"> 0.1414000 </td>
  </tr>
</tbody>
</table>

## Input data
### MAUI derived tables




### Metmax derived tables



## Output data

### Experimental Setup



### MTXQCvX2 part1

#### `output/gc/...`{#o_gc}
##### `HM_GC_values.csv` \& `qcmetric_xy.csv`

MTXQC exports a file summarising quality factors for each of the four parameter evaluating the GC performance. A summary representing the values illustrated in the heatmap are shown in table [`HM_GC_values.csv`](\@ref(tab:o_hm_gc)), individual exports for each metric in table [`qcmetric_xy.csv`](\@ref(tab:o_gc_metric)).


```
## 'data.frame':	3 obs. of  3 variables:
##  $ Column.name: Factor w/ 3 levels "Batch_Id","qc_metric",..: 1 2 3
##  $ Description: Factor w/ 3 levels "Batch-Id","Class of QC metric",..: 1 3 2
##  $ Value      : Factor w/ 3 levels "0.937254457",..: 3 1 2
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Column.name </th>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:left;"> Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Batch_Id </td>
   <td style="text-align:left;"> Batch-Id </td>
   <td style="text-align:left;"> e18274ba </td>
  </tr>
  <tr>
   <td style="text-align:left;"> qc_metric </td>
   <td style="text-align:left;"> QC metric factor corresponding with 1 - very good and 0 - very low </td>
   <td style="text-align:left;"> 0.937254457 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> title </td>
   <td style="text-align:left;"> Class of QC metric </td>
   <td style="text-align:left;"> alkanes </td>
  </tr>
</tbody>
</table>


```
## 'data.frame':	3 obs. of  3 variables:
##  $ Column.name: Factor w/ 3 levels "Batch_Id","qc_metric",..: 1 2 3
##  $ Description: Factor w/ 3 levels "Batch-Id","Class of QC metric",..: 1 3 2
##  $ Value      : Factor w/ 3 levels "0.937254457",..: 3 1 2
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Column.name </th>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:left;"> Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Batch_Id </td>
   <td style="text-align:left;"> Batch-Id </td>
   <td style="text-align:left;"> e18274ba </td>
  </tr>
  <tr>
   <td style="text-align:left;"> qc_metric </td>
   <td style="text-align:left;"> QC metric factor corresponding with 1 - very good and 0 - very low </td>
   <td style="text-align:left;"> 0.937254457 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> title </td>
   <td style="text-align:left;"> Class of QC metric </td>
   <td style="text-align:left;"> alkanes </td>
  </tr>
</tbody>
</table>


##### `IntStandard_normfactors.csv` \& `IntStandard_stats.csv`


```
## 'data.frame':	5 obs. of  3 variables:
##  $ Column.name: Factor w/ 5 levels "Batch_Id","File",..: 2 5 1 4 3
##  $ Description: Factor w/ 5 levels "Bacth-Id","Determined normalisation factor",..: 4 5 1 2 3
##  $ Value      : Factor w/ 5 levels "0.837457514",..: 4 2 3 1 5
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Column.name </th>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:left;"> Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> File </td>
   <td style="text-align:left;"> File name </td>
   <td style="text-align:left;"> e18274ba_17.cdf </td>
  </tr>
  <tr>
   <td style="text-align:left;"> PeakArea </td>
   <td style="text-align:left;"> Peak area of internal extraction standard </td>
   <td style="text-align:left;"> 89308492 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Batch_Id </td>
   <td style="text-align:left;"> Bacth-Id </td>
   <td style="text-align:left;"> e18274ba </td>
  </tr>
  <tr>
   <td style="text-align:left;"> IntStd_fac </td>
   <td style="text-align:left;"> Determined normalisation factor </td>
   <td style="text-align:left;"> 0.837457514 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> IntStd_eval </td>
   <td style="text-align:left;"> Evaluation of normalisation factor in relation to defined range plus/minus one standard deviation </td>
   <td style="text-align:left;"> within </td>
  </tr>
</tbody>
</table>


```
## 'data.frame':	8 obs. of  3 variables:
##  $ Column.name: Factor w/ 8 levels "Batch_Id","File",..: 2 7 1 4 3 6 5 8
##  $ Description: Factor w/ 8 levels "Batch-Id","Evaluation regarding QC",..: 3 7 1 5 2 6 4 8
##  $ Value      : Factor w/ 8 levels "0.837457514",..: 7 5 6 1 8 4 2 3
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Column.name </th>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:left;"> Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> File </td>
   <td style="text-align:left;"> File name </td>
   <td style="text-align:left;"> e18274ba_17.cdf </td>
  </tr>
  <tr>
   <td style="text-align:left;"> PeakArea </td>
   <td style="text-align:left;"> Peak area of internal extraction standard </td>
   <td style="text-align:left;"> 89308492 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Batch_Id </td>
   <td style="text-align:left;"> Batch-Id </td>
   <td style="text-align:left;"> e18274ba </td>
  </tr>
  <tr>
   <td style="text-align:left;"> IntStd_fac </td>
   <td style="text-align:left;"> Normalisation factor </td>
   <td style="text-align:left;"> 0.837457514 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> IntStd_eval </td>
   <td style="text-align:left;"> Evaluation regarding QC </td>
   <td style="text-align:left;"> within </td>
  </tr>
</tbody>
</table>


##### `Min_Annotation.csv` \& `SumArea_stats.csv`


```
## 'data.frame':	9 obs. of  3 variables:
##  $ Column.name: Factor w/ 9 levels "area_fac","Batch_Id",..: 3 2 6 9 7 4 8 1 5
##  $ Description: Factor w/ 9 levels "Extracted Batch-Id derived from file name",..: 2 1 6 8 9 3 7 4 5
##  $ Value      : Factor w/ 9 levels "1.296568521",..: 9 8 2 6 3 5 4 1 7
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Column.name </th>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:left;"> Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> File </td>
   <td style="text-align:left;"> File name </td>
   <td style="text-align:left;"> e18274ba_17.cdf </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Batch_Id </td>
   <td style="text-align:left;"> Extracted Batch-Id derived from file name </td>
   <td style="text-align:left;"> e18274ba </td>
  </tr>
  <tr>
   <td style="text-align:left;"> n_area </td>
   <td style="text-align:left;"> Number of peak areas per file </td>
   <td style="text-align:left;"> 101 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> sum_area </td>
   <td style="text-align:left;"> Sum of all peak areas </td>
   <td style="text-align:left;"> 44614610885 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> n_total </td>
   <td style="text-align:left;"> Total number of entries (including NA) </td>
   <td style="text-align:left;"> 107 </td>
  </tr>
</tbody>
</table>


```
## 'data.frame':	2 obs. of  3 variables:
##  $ Column.name: Factor w/ 2 levels "Batch_Id","n_50": 1 2
##  $ Description: Factor w/ 2 levels "Batch-Id","Number corresponding to fifty percent of the maximum number of annotated peaks per file": 1 2
##  $ Value      : Factor w/ 2 levels "53.5","e18274ba": 2 1
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;">   </th>
   <th style="text-align:left;"> Column.name </th>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:left;"> Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> Batch_Id </td>
   <td style="text-align:left;"> Batch-Id </td>
   <td style="text-align:left;"> e18274ba </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> n_50 </td>
   <td style="text-align:left;"> Number corresponding to fifty percent of the maximum number of annotated peaks per file </td>
   <td style="text-align:left;"> 53.5 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> NA.1 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> NA.2 </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
</tbody>
</table>

##### `mz73_data.csv`


```
## 'data.frame':	7 obs. of  3 variables:
##  $ Column.name: Factor w/ 7 levels "Batch_Id","File",..: 2 1 3 6 4 7 5
##  $ Description: Factor w/ 7 levels "Batch-ID","File name",..: 2 1 3 6 4 7 5
##  $ Value      : Factor w/ 7 levels "0.002407244",..: 7 6 3 2 4 5 1
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Column.name </th>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:left;"> Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> File </td>
   <td style="text-align:left;"> File name </td>
   <td style="text-align:left;"> e18274ba_17.cdf </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Batch_Id </td>
   <td style="text-align:left;"> Batch-ID </td>
   <td style="text-align:left;"> e18274ba </td>
  </tr>
  <tr>
   <td style="text-align:left;"> mean_73 </td>
   <td style="text-align:left;"> Mean value of the sum of m/z 73 intensities per file </td>
   <td style="text-align:left;"> 16314646.1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> sd_73 </td>
   <td style="text-align:left;"> Standard deviation of the mean of the sum of m/z 73 intensities per file </td>
   <td style="text-align:left;"> 143890119.5 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> n_peaks </td>
   <td style="text-align:left;"> Number of intensities used for statistics </td>
   <td style="text-align:left;"> 600 </td>
  </tr>
</tbody>
</table>

#### `output/quant/...`{#o_quant}

##### `calcheck_linearity.csv`


```
## 'data.frame':	21 obs. of  3 variables:
##  $ Column.name: Factor w/ 21 levels "adj_r_squared",..: 9 2 4 17 14 21 10 11 7 16 ...
##  $ Description: Factor w/ 21 levels "","Adjusted Rsquare value of linear regression of the calibration curve",..: 8 3 7 5 21 13 16 19 14 18 ...
##  $ Value      : Factor w/ 18 levels "","-898.3400476",..: 11 12 13 6 7 16 3 10 9 17 ...
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Column.name </th>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:left;"> Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Metabolite </td>
   <td style="text-align:left;"> Full library name of the metabolite </td>
   <td style="text-align:left;"> Alanine_(3TMS)_MP_RI:1367_IDENT:B+C </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Batch_Id </td>
   <td style="text-align:left;"> Batch-Id </td>
   <td style="text-align:left;"> e18274ba </td>
  </tr>
  <tr>
   <td style="text-align:left;"> File </td>
   <td style="text-align:left;"> File name </td>
   <td style="text-align:left;"> e18274ba_53.cdf </td>
  </tr>
  <tr>
   <td style="text-align:left;"> QuantMasses </td>
   <td style="text-align:left;"> Defined quantification masses </td>
   <td style="text-align:left;"> 110.0 133.0 114.0 100.0 188.0 190.0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> PeakArea </td>
   <td style="text-align:left;"> Sum of peak areas based on defined QuantMasses </td>
   <td style="text-align:left;"> 12710956 </td>
  </tr>
</tbody>
</table>

##### `CalculationFileData.csv`{#CalcFileData}

This is porbably the most important file that is generated by running `MTXQCvX2_part1.Rmd`. It summarises all quality factors, experimental data and determined quantities of your experiment. This file provides the input for `MTXQCvX2_part2-PostProcessing.Rmd`.


```
## 'data.frame':	43 obs. of  4 variables:
##  $ Column.name: Factor w/ 43 levels "absconc","adj_r_squared",..: 4 6 9 13 36 41 42 12 43 23 ...
##  $ Class      : Factor w/ 9 levels "AnnExp","AnnExtract",..: 1 1 1 1 1 1 1 2 2 3 ...
##  $ Description: Factor w/ 41 levels "Absolute quantity in pmol",..: 3 14 14 16 6 14 40 7 9 18 ...
##  $ Value      : Factor w/ 37 levels "","#Glycerol-3-phosphate (4TMS)",..: 27 24 25 28 1 3 34 18 26 29 ...
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Column.name </th>
   <th style="text-align:left;"> Class </th>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:left;"> Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Batch_Id </td>
   <td style="text-align:left;"> AnnExp </td>
   <td style="text-align:left;"> Batch-Id extracted from file name </td>
   <td style="text-align:left;"> e18274ba </td>
  </tr>
  <tr>
   <td style="text-align:left;"> CL </td>
   <td style="text-align:left;"> AnnExp </td>
   <td style="text-align:left;"> Experimental parameter </td>
   <td style="text-align:left;"> BE(2)-C </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Cond </td>
   <td style="text-align:left;"> AnnExp </td>
   <td style="text-align:left;"> Experimental parameter </td>
   <td style="text-align:left;"> Control </td>
  </tr>
  <tr>
   <td style="text-align:left;"> File </td>
   <td style="text-align:left;"> AnnExp </td>
   <td style="text-align:left;"> File name </td>
   <td style="text-align:left;"> e18274ba_25.cdf </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Standards </td>
   <td style="text-align:left;"> AnnExp </td>
   <td style="text-align:left;"> Defined as standard (InternalStandard, Alk) </td>
   <td style="text-align:left;">  </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Time </td>
   <td style="text-align:left;"> AnnExp </td>
   <td style="text-align:left;"> Experimental parameter </td>
   <td style="text-align:left;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Type </td>
   <td style="text-align:left;"> AnnExp </td>
   <td style="text-align:left;"> Type of measurement </td>
   <td style="text-align:left;"> sample </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Extract_vol </td>
   <td style="text-align:left;"> AnnExtract </td>
   <td style="text-align:left;"> Defined extractes in count, mg or uL defined in Unit </td>
   <td style="text-align:left;"> 3290000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Unit </td>
   <td style="text-align:left;"> AnnExtract </td>
   <td style="text-align:left;"> Defined unit for corresponding Extract_vol </td>
   <td style="text-align:left;"> count </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lettercode </td>
   <td style="text-align:left;"> AnnMet </td>
   <td style="text-align:left;"> Lettercode version of metabolite name </td>
   <td style="text-align:left;"> Glyc3P </td>
  </tr>
</tbody>
</table>

##### `HeatMap_Quant_pTop5.csv`


```
## 'data.frame':	5 obs. of  3 variables:
##  $ Column.name: Factor w/ 5 levels "Batch_Id","Lettercode",..: 2 1 3 4 5
##  $ Description: Factor w/ 5 levels "Batch-Id","Library name of metabolite",..: 4 1 2 3 5
##  $ Value      : Factor w/ 5 levels "0.996053496",..: 2 4 3 5 1
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Column.name </th>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:left;"> Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Lettercode </td>
   <td style="text-align:left;"> Short name of metabolite </td>
   <td style="text-align:left;"> Cit </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Batch_Id </td>
   <td style="text-align:left;"> Batch-Id </td>
   <td style="text-align:left;"> e18274ba </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Metabolite </td>
   <td style="text-align:left;"> Library name of metabolite </td>
   <td style="text-align:left;"> Citric acid_(4TMS)_MP_RI:1814_IDENT:B+D </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Par </td>
   <td style="text-align:left;"> Parameter </td>
   <td style="text-align:left;"> R2_cal </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Val </td>
   <td style="text-align:left;"> Value of the parameter for corresponding metabolite </td>
   <td style="text-align:left;"> 0.996053496 </td>
  </tr>
</tbody>
</table>

##### `pTop5_Calibration_Samples_lincheck.csv`


```
## 'data.frame':	7 obs. of  3 variables:
##  $ Column.name: Factor w/ 7 levels "Batch_Id","count",..: 4 3 1 5 2 7 6
##  $ Description: Factor w/ 7 levels "Batch-Id","Evaluation of peak area in relation to calibration curve if available",..: 6 2 1 5 4 7 3
##  $ Value      : Factor w/ 5 levels "1","3PGA","51",..: 2 5 4 NA 3 3 1
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Column.name </th>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:left;"> Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Lettercode </td>
   <td style="text-align:left;"> Short name of metabolite </td>
   <td style="text-align:left;"> 3PGA </td>
  </tr>
</tbody>
</table>

##### `top5_CalibrationInfo_unique.csv`


```
## 'data.frame':	8 obs. of  3 variables:
##  $ Column.name: Factor w/ 8 levels "adj_r_squared",..: 6 5 2 7 1 4 8 3
##  $ Description: Factor w/ 8 levels "Adjsuted Rsquare of calibration curve",..: 6 5 2 7 1 4 8 3
##  $ Value      : Factor w/ 8 levels "0.000194064",..: 6 5 7 8 2 4 1 3
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Column.name </th>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:left;"> Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Metabolite </td>
   <td style="text-align:left;"> Library name of metabolite </td>
   <td style="text-align:left;"> Citric acid_(4TMS)_MP_RI:1814_IDENT:B+D </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Lettercode </td>
   <td style="text-align:left;"> Lettercode name of metabolite </td>
   <td style="text-align:left;"> Cit </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Batch_Id </td>
   <td style="text-align:left;"> Batch-Id </td>
   <td style="text-align:left;"> e18274ba </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Origin </td>
   <td style="text-align:left;"> Origin of quant1:1 value </td>
   <td style="text-align:left;"> Qstd </td>
  </tr>
  <tr>
   <td style="text-align:left;"> adj_r_squared </td>
   <td style="text-align:left;"> Adjsuted Rsquare of calibration curve </td>
   <td style="text-align:left;"> 0.996053496 </td>
  </tr>
</tbody>
</table>

##### `top5_QMQcurveInfo.csv`


```
## 'data.frame':	15 obs. of  3 variables:
##  $ Column.name: Factor w/ 15 levels "adj_r_squared",..: 8 7 14 10 2 5 3 4 13 11 ...
##  $ Description: Factor w/ 15 levels "Adjusted Rsquare of calibration curve",..: 8 5 13 9 2 6 4 3 12 14 ...
##  $ Value      : Factor w/ 13 levels "0.000194064",..: 9 9 7 11 12 2 6 4 13 10 ...
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Column.name </th>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:left;"> Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Lettercode </td>
   <td style="text-align:left;"> Lettercode of metabolite name </td>
   <td style="text-align:left;"> Cit </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Letter_Derivate </td>
   <td style="text-align:left;"> Derivate name </td>
   <td style="text-align:left;"> Cit </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Quant1_v4 </td>
   <td style="text-align:left;"> Quant1:1 value in (pmol) </td>
   <td style="text-align:left;"> 52050 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Metabolite </td>
   <td style="text-align:left;"> Library name of metabolite </td>
   <td style="text-align:left;"> Citric acid_(4TMS)_MP_RI:1814_IDENT:B+D </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Batch_Id </td>
   <td style="text-align:left;"> Batch-Id </td>
   <td style="text-align:left;"> e18274ba </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Dilution </td>
   <td style="text-align:left;"> Dilution factor </td>
   <td style="text-align:left;"> 0.2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> ChromIntensities </td>
   <td style="text-align:left;"> Corresponding peak areas </td>
   <td style="text-align:left;"> 45074572 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Concentration </td>
   <td style="text-align:left;"> Concentration in (pmol) </td>
   <td style="text-align:left;"> 10410 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Origin </td>
   <td style="text-align:left;"> Origin of quantification standard </td>
   <td style="text-align:left;"> Qstd </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Metabolite_short </td>
   <td style="text-align:left;"> Short name of metabolite </td>
   <td style="text-align:left;"> Citric acid 275_(4TMS) </td>
  </tr>
  <tr>
   <td style="text-align:left;"> adj_r_squared </td>
   <td style="text-align:left;"> Adjusted Rsquare of calibration curve </td>
   <td style="text-align:left;"> 0.996053496 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> intercept </td>
   <td style="text-align:left;"> Intercept of calibration curve </td>
   <td style="text-align:left;"> 564.549288 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> slope </td>
   <td style="text-align:left;"> Slope of calibration curve </td>
   <td style="text-align:left;"> 0.000194064 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> max </td>
   <td style="text-align:left;"> Max. value of calibration curve </td>
   <td style="text-align:left;"> 52050 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> min </td>
   <td style="text-align:left;"> Min. value of calibration curve </td>
   <td style="text-align:left;"> 260.25 </td>
  </tr>
</tbody>
</table>

#### `output/inc/...`{#o_inc}

##### `HeatMap_Incorporation.csv`


```
## 'data.frame':	4 obs. of  3 variables:
##  $ Column.name: Factor w/ 4 levels "Batch_Id","Lettercode",..: 2 1 3 4
##  $ Description: Factor w/ 4 levels "Batch-Id","Lettercode name of metabolite",..: 2 1 3 4
##  $ Value      : Factor w/ 4 levels "0.740740741",..: 2 3 4 1
```

<table>
 <thead>
  <tr>
   <th style="text-align:left;">   </th>
   <th style="text-align:left;"> Column.name </th>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:left;"> Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> Lettercode </td>
   <td style="text-align:left;"> Lettercode name of metabolite </td>
   <td style="text-align:left;"> 3PGA </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> Batch_Id </td>
   <td style="text-align:left;"> Batch-Id </td>
   <td style="text-align:left;"> e18274ba </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> Par </td>
   <td style="text-align:left;"> Parameter </td>
   <td style="text-align:left;"> NA_count </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> Val </td>
   <td style="text-align:left;"> Value of the parameter shown in heatmap </td>
   <td style="text-align:left;"> 0.740740741 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> NA </td>
  </tr>
</tbody>
</table>

##### `SE_calculation_NAscore.csv`


```
## 'data.frame':	5 obs. of  3 variables:
##  $ Column.name: Factor w/ 5 levels "Batch_Id","fracr_prop",..: 3 1 5 4 2
##  $ Description: Factor w/ 5 levels "Batch-Id","Class of NA-value",..: 4 1 2 5 3
##  $ Value      : Factor w/ 5 levels "0","0.851851852",..: 4 5 1 3 2
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Column.name </th>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:left;"> Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Lettercode </td>
   <td style="text-align:left;"> Lettercode name of metabolite </td>
   <td style="text-align:left;"> Cit </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Batch_Id </td>
   <td style="text-align:left;"> Batch-Id </td>
   <td style="text-align:left;"> e18274ba </td>
  </tr>
  <tr>
   <td style="text-align:left;"> na_frac_r </td>
   <td style="text-align:left;"> Class of NA-value </td>
   <td style="text-align:left;"> 0 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> N </td>
   <td style="text-align:left;"> Number of MIDs </td>
   <td style="text-align:left;"> 46 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> fracr_prop </td>
   <td style="text-align:left;"> Fraction of MIDs with x NA-values in relation to total number of evaluated MIDs </td>
   <td style="text-align:left;"> 0.851851852 </td>
  </tr>
</tbody>
</table>

##### `SE_classification.csv`


```
## 'data.frame':	9 obs. of  3 variables:
##  $ Column.name: Factor w/ 9 levels "Batch_Id","count_score",..: 4 1 3 8 7 5 6 9 2
##  $ Description: Factor w/ 6 levels "_expl_","Batch-Id",..: 4 2 3 1 1 1 1 6 5
##  $ Value      : Factor w/ 9 levels "1861","2.30897367",..: 4 6 7 3 1 2 9 5 8
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Column.name </th>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:left;"> Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Lettercode </td>
   <td style="text-align:left;"> Lettercode name of metabolite </td>
   <td style="text-align:left;"> Cit </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Batch_Id </td>
   <td style="text-align:left;"> Batch-Id </td>
   <td style="text-align:left;"> e18274ba </td>
  </tr>
  <tr>
   <td style="text-align:left;"> File </td>
   <td style="text-align:left;"> File name </td>
   <td style="text-align:left;"> e18274ba_26.cdf </td>
  </tr>
  <tr>
   <td style="text-align:left;"> sum_spa </td>
   <td style="text-align:left;"> _expl_ </td>
   <td style="text-align:left;"> 4297 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> sum_bpa </td>
   <td style="text-align:left;"> _expl_ </td>
   <td style="text-align:left;"> 1861 </td>
  </tr>
</tbody>
</table>

##### `SE_validation.csv`


```
## 'data.frame':	6 obs. of  3 variables:
##  $ Column.name: Factor w/ 6 levels "Batch_Id","count_score",..: 3 1 2 4 6 5
##  $ Description: Factor w/ 6 levels "Batch-Id","Evaluation of MID",..: 3 1 2 5 4 6
##  $ Value      : Factor w/ 5 levels "1","54","Cit",..: 3 4 5 2 2 1
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Column.name </th>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:left;"> Value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Lettercode </td>
   <td style="text-align:left;"> Lettercode name of metabolite </td>
   <td style="text-align:left;"> Cit </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Batch_Id </td>
   <td style="text-align:left;"> Batch-Id </td>
   <td style="text-align:left;"> e18274ba </td>
  </tr>
  <tr>
   <td style="text-align:left;"> count_score </td>
   <td style="text-align:left;"> Evaluation of MID </td>
   <td style="text-align:left;"> goodQ </td>
  </tr>
  <tr>
   <td style="text-align:left;"> N_count </td>
   <td style="text-align:left;"> Number of evaluated MIDs </td>
   <td style="text-align:left;"> 54 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> sum_files </td>
   <td style="text-align:left;"> Number of detected MIDs </td>
   <td style="text-align:left;"> 54 </td>
  </tr>
</tbody>
</table>



#### MTXQCvX2 part3


#### MTXQCvX2 part4
