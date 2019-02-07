# Configuration of MTXQCvX2 - `config_mtx/...`{#config}

Herein explained are the customizable tables of the MTXQCvX2 universe.

## `conversion_metabolite.csv`



Column.name         Description                                       Value                               
------------------  ------------------------------------------------  ------------------------------------
Metabolite_manual   Manual defined metabolite name                    #Alanine (2TMS)                     
Metabolite          Library name of the metabolite                    Alanine_(2TMS)_BP_RI:1097_IDENT:B+C 
Metabolite_short    Short version of library name of the metabolite   Alanine_(2TMS)                      
Lettercode          Lettercode version of metabolite name             Ala_2TMS                            
Q1_value            Checked if quant1:1 value available               x                                   
Mass_Pos            m/z-value corresponding to m_inc                  118                                 
SE_sel              Evaluation of the MIDs                            x                                   
Q_sel               Evaluation for absolute quantification            x                                   
nopsirm             Exclusively for absolute quantification                                               
Standards           Defined as standard                               InternalStandard, Alk               


## `letter_pathway_complete.csv`


Column.name       Description                                           Value         
----------------  ----------------------------------------------------  --------------
Letter_Derivate   Derivate definition                                   Ala           
Lettercode        Lettercode name of metabolite                         Ala_3TMS      
Pathway           Ass.pathway                                           aa            
Pathway.1         Ass. pathway - ordered for heatmap                    5-aa          
Met_pathway       Ass. pathway - ordered for heatmap incl. Lettercode   5-aa_Ala_3TMS 
Subs_class        Substance class                                       aa            
Met_class         Substance class incl. Lettercode                      aa_Ala_3TMS   

## `quant1-values.csv`


Column.name       Description                   Value 
----------------  ----------------------------  ------
Letter_Derivate   Derivate name of metabolite   3PGA  
Quant1_v4         Quantity in (pmol)            43480 
Quant1_v3         Quantity in (pmol)            43480 

## `incorporation_calc.csv` \& `mid_backups.csv`


Column.name   Description                  Value                               
------------  ---------------------------  ------------------------------------
Metabolite    Library name of metabolite   Alanine_(2TMS)_BP_RI:1097_IDENT:B+C 
Mass_mz       m/z-value                    116, 118                            
LI_MID        Definition of mass level     m0, minc                            


Column.name      Description                             Value                                      
---------------  --------------------------------------  -------------------------------------------
Metabolite       Library name of metabolite              Alanine_ beta-_(3TMS)_MP_RI:1435_IDENT:A+D 
Mass.m.z.        m/z value                               188                                        
BackupPeakArea   Peak area of Backup MID                 4960                                       
BackupMID        MID value for corresponding Mass.m.z.   0.8005                                     


