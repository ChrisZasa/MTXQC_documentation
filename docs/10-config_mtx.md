---
always_allow_html: yes
---




# Customization of MTXQCvX2{#config}

Herein explained are the customizable tables of the MTXQCvX2 universe.

## `conversion_metabolite.csv`



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
</tbody>
</table>


## `letter_pathway_complete.csv`


```
## 'data.frame':	7 obs. of  3 variables:
##  $ Column.name: Factor w/ 7 levels "Letter_Derivate",..: 1 2 5 6 4 7 3
##  $ Description: Factor w/ 7 levels "Ass. pathway - ordered for heatmap",..: 4 5 3 1 2 6 7
##  $ Value      : Factor w/ 6 levels "5-aa","5-aa_Ala_3TMS",..: 5 6 3 1 2 3 4
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
   <td style="text-align:left;"> Letter_Derivate </td>
   <td style="text-align:left;"> Derivate definition </td>
   <td style="text-align:left;"> Ala </td>
  </tr>
</tbody>
</table>

## `quant1-values.csv`


```
## 'data.frame':	3 obs. of  3 variables:
##  $ Column.name: Factor w/ 3 levels "Letter_Derivate",..: 1 3 2
##  $ Description: Factor w/ 2 levels "Derivate name of metabolite",..: 1 2 2
##  $ Value      : Factor w/ 2 levels "3PGA","43480": 1 2 2
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
   <td style="text-align:left;"> Letter_Derivate </td>
   <td style="text-align:left;"> Derivate name of metabolite </td>
   <td style="text-align:left;"> 3PGA </td>
  </tr>
</tbody>
</table>

## `incorporation_calc.csv` 


```
## 'data.frame':	3 obs. of  3 variables:
##  $ Column.name: Factor w/ 3 levels "LI_MID","Mass_mz",..: 3 2 1
##  $ Description: Factor w/ 3 levels "Definition of mass level",..: 2 3 1
##  $ Value      : Factor w/ 3 levels "116, 118","Alanine_(2TMS)_BP_RI:1097_IDENT:B+C",..: 2 1 3
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
   <td style="text-align:left;"> Alanine_(2TMS)_BP_RI:1097_IDENT:B+C </td>
  </tr>
</tbody>
</table>

## `mid_backups.csv`


```
## 'data.frame':	4 obs. of  3 variables:
##  $ Column.name: Factor w/ 4 levels "BackupMID","BackupPeakArea",..: 4 3 2 1
##  $ Description: Factor w/ 4 levels "Library name of metabolite",..: 1 2 4 3
##  $ Value      : Factor w/ 4 levels "0.8005","188",..: 4 2 3 1
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
   <td style="text-align:left;"> Alanine_ beta-_(3TMS)_MP_RI:1435_IDENT:A+D </td>
  </tr>
</tbody>
</table>


