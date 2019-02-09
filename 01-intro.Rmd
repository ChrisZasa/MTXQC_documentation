# Introduction MTXQCvX documentation {#intro}

This documentation introduces to you how to use MTXQCvX2 in order to run a first straight-forward data analysis of your metabolomics experiment. The underling experimental and mathematical concepts have been introduced for the pulsed stable isotope resolved metabolomics (pSIRM) approach published in [@Pietzke2014].

This documentation shows you how to use MTXQCvX2 in order to assess the quality of your GC-MS derived data, perform the determination of calibration curves and absolute quantification. It furthermore provides you two normalisation strategies and the calculation of quantities in, e.g., pmol/1e+6 cells or pmol/mg tissue.

MTXQCvX2 does also enable the calculation of stable isotopic incorporation and the evaluation of the underlying data, the mass isotopomer distributions (MIDs). 

The tool has been set up to support the in-lab developed workflow for quantitative metabolomics experiments using the in-house developed software Maui for the annotation of data. MTXQCvX2 bridges the gap between quality control and first data post-processing / analysis of GC-MS derived data (MTXQCvX2_part1, MTXQCvX2_part2).

Nevertheless MTXQCvX2 includes a module in order to integrate all kind of data provided in spreadsheet-format, e.g., derived from metmax, extracting required information and creating corresponding files (MTXQCvX2_part4).

## Structure
MTXQCvX2 contains a suite of modules is optimized to process GC-MS derived data and processed either in Maui or Chromatof/Metmax. Workflows for both approaches are introduced with step-by-step instructions in chapter @\ref(maui) and @\ref(metmax).

Subsequently each MTXQCvX2 module (chapter \@ref(ExpSetup) - \@ref(Metmax)) is introduced in greater detail including a input / output files and processing parameter.

The configuration of MTXQCvX2 has been split into two categories - (1) a general configuration `config_files` and (2) metabolomics specific parameters `config_mtx`. Latter one is meant to provide flexibility including further substances. How to do so and what files can be customizes is shown in chapter \@ref(config).

Workflow-specific processing methods applied in Chromatof are introduced separately in the chapter \@ref(mauiproc) and \@ref(metmaxproc) including all parameter as well as a short introduction.

The remaining chapter cover a chapter for frequently asked questions (chapter\@ref(FAQ)) that might give you a hint where to search for the information you are looking for. 

The appendix summarises technical reference material in the form of a dictionary of tables (chapter \@ref(tables)), protocols for the pSIRM workflow \@ref(psirm) and a complete distinct chapter listing protocols (chapter \@ref(protocols)) including standard and sample preparation and derivatisation (chapter \@ref(SampleExtraction)  and \@ref(Deriv)) and the current setting of the GC-ToF-MS machine (chapter \@ref(gcms)).

## How to use this documentation
This documentation provides for each level the right starting point. Complete newbies are highly suggested to start with one of the two tutorials and following the step-by-step descriptions using the example datasets. 
Also if you are using for the first time please go through to the chapter once to be aware of all the steps that are required to succeed. 

Experienced users might be referred to the explanation of the individual modules or to the how-to-guides for data processing and the FAQs section.

## Example datasets and files

introduce inst/template folder

## `What do I do if I don't find the answer?`

If you are familiar with github and the create an issue - please head on to the gihub repository (github.com/ChrisZasa/MTXQC_documentation) of this documentation and create one or write me a message. 






