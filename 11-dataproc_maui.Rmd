# Data processing - MAUI{#mauiproc}

## Processing In ChromaToF

Create a new folder in ChromaToF Pegasus Acquired Samples and import your files.
The processing of files for Maui-assisted annotation is a two step process. 
Therefore two data processing methods have to be set up and applied to all files. 

### Resampling

Resampling is commonly applied and results into a data transformation enabling an improved detection of low abundant peaks and a reduction of noise. (Maybe include an example?)

The processing methods requires to tick `Export of ...`. Subsequently, you are asked to define an output folder and the following paramter:

- Reduction rate: 4
- Beginning to end of the file
- `.peg`-files

### Combo-export (`.cdf` \& `.csv`)

Re-import the generated `.peg`-files into a subfolder and apply the following data processing method.

Activate the box `asddasd` and define for both file types the following parameter.

`.cdf`-file:

- export directory
- 


`.csv`-file:

- export directory
- 



                      

## Maui pSIRM workflow{#mauipsirm}



## Maui exports{#mauiexport}
### Subfolder: `input/gc`

This folder contains all input files that are required to assess the quality of the GC-MS perfomance for the complete GC-MS run. In order to validate all four parameter we need to export the following information from the Maui-project.

You can perform exports via right click on either (1) the project name and the functions provided in the menue `Diagnostics` or (2) with a direct right click on data container, e.g., 

* Open your Maui-project and export:
  1. `Alcane_intensities.csv`: Diagnostics/Export Alcane intensities
  2. `MassSum-73.csv`: Diagnostics/QC Mass Sum Export and define 73 for m/z 73
  3. `PeakDensities-Chroma.csv`: Diagnostics/Export PeakDensities
* Export the information of the cinnamic acid container with right-click and Export quantification, follow the pop-up dialogues
* Use the explorer and open `.../mauiproject-name/export/Diagnostics` and copy the csv.files into `input/gc`
* Navigate to `.../mauiproject-name/export/ExportQuantification/defined-folder`
* Copy the file `quantMassAreasMatrix.csv` without applied normalisation and rename it `InternalStandard.csv`

### Subfolder: `input/quant`

Two files have to be copied into this folder in order to perform the quantification of metabolites: (1) peak areas of the calibration curves and (2) of all samples.

The first file `ManualQuantTable.tsv` is automatically generated during the processing of the absolute quantification in Maui.

  * Navigate in the explorer to `.../mauiproject-name/export/QM-ManualQuantification/`
  * Copy the file `ManualQuantTable.tsv`
  * Rename it with the corresponding batch-id of the GC-MS run (e.g., e17205cz)

Peak areas for each measurement and metabolite have to be exported in Maui:

  * Open your Maui-project and export:
  * Export the information of the samplePeakGroups container with right-click and Export quantification, follow the instructions
  * Navigate in the explorer to `.../mauiproject-name/export/ExportQuantification/defined-folder`
  * Copy the file `quantMassAreasMatrix.csv` without applied normalisation

### Subfolder `input/inc`

The evaluation of stable isotope incorporation requires two input files exported from the container pSIRM-samplesPeakGroups, right click and corresponding export function: 

  * `DataMatrix.csv`: Export % Label
  * `pSIRM_SpectraData.csv`: pSIRM Spectra Export
  * Navigate in the explorer to `.../mauiproject-name/export/SpectraExport/defined-folder` and `xy`
  * Copy both files, no renaming required
