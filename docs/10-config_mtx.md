---
always_allow_html: yes
---




# Customization of MTXQCvX2{#config}

Herein explained are the customizable tables of the MTXQCvX2 universe.

## `conversion_metabolite.csv`


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


## `letter_pathway_complete.csv`

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
  <tr>
   <td style="text-align:left;"> Lettercode </td>
   <td style="text-align:left;"> Lettercode name of metabolite </td>
   <td style="text-align:left;"> Ala_3TMS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pathway </td>
   <td style="text-align:left;"> Ass.pathway </td>
   <td style="text-align:left;"> aa </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pathway.1 </td>
   <td style="text-align:left;"> Ass. pathway - ordered for heatmap </td>
   <td style="text-align:left;"> 5-aa </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Met_pathway </td>
   <td style="text-align:left;"> Ass. pathway - ordered for heatmap incl. Lettercode </td>
   <td style="text-align:left;"> 5-aa_Ala_3TMS </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Subs_class </td>
   <td style="text-align:left;"> Substance class </td>
   <td style="text-align:left;"> aa </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Met_class </td>
   <td style="text-align:left;"> Substance class incl. Lettercode </td>
   <td style="text-align:left;"> aa_Ala_3TMS </td>
  </tr>
</tbody>
</table>

## `quant1-values.csv`

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
  <tr>
   <td style="text-align:left;"> Quant1_v4 </td>
   <td style="text-align:left;"> Quantity in (pmol) </td>
   <td style="text-align:left;"> 43480 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Quant1_v3 </td>
   <td style="text-align:left;"> Quantity in (pmol) </td>
   <td style="text-align:left;"> 43480 </td>
  </tr>
</tbody>
</table>

## `incorporation_calc.csv` 

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
  <tr>
   <td style="text-align:left;"> Mass_mz </td>
   <td style="text-align:left;"> m/z-value </td>
   <td style="text-align:left;"> 116, 118 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> LI_MID </td>
   <td style="text-align:left;"> Definition of mass level </td>
   <td style="text-align:left;"> m0, minc </td>
  </tr>
</tbody>
</table>

## `mid_backups.csv`

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
  <tr>
   <td style="text-align:left;"> Mass.m.z. </td>
   <td style="text-align:left;"> m/z value </td>
   <td style="text-align:left;"> 188 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> BackupPeakArea </td>
   <td style="text-align:left;"> Peak area of Backup MID </td>
   <td style="text-align:left;"> 4960 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> BackupMID </td>
   <td style="text-align:left;"> MID value for corresponding Mass.m.z. </td>
   <td style="text-align:left;"> 0.8005 </td>
  </tr>
</tbody>
</table>


