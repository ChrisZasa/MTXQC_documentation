--- 
title: "MTXQCvX2 documentation"
author: "Christin Zasada"
date: "2019-02-07"
github-repo: chriszasa/MTXQC_documentation
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: apalike
link-citations: yes
description: "This is the offical documentation for the MTXQCvX2 toolbox."
always_allow_html: yes
---

# Welcome

This documentation introduced to you how to use MTXQCvX2 in order to assess the quality of your GC-MS derived data, perform the determination of calibration curves and absolute quantification. It furthermore provides you two normalisation strategies and the calculation of quantities in, e.g., pmol/1e+6 cells or pmol/mg tissue.

MTXQCvX2 does also enable the calculation of stable isotopic incorporation and the evaluation of the underlying data, the mass isotopomer distributions (MIDs). 

The tool has been set up to support the in-lab developed workflow for quantitative metabolomics experiments using the in-house developed software Maui for the annotation of data. MTXQCvX2 bridges the gap between quality control and first data post-processing / analysis of GC-MS derived data (MTXQCvX2_part1, MTXQCvX2_part2).

Nevertheless MTXQCvX2 includes a module in order to integrate all kind of data provided in spreadsheet-format, e.g., derived from metmax, extracting required information and creating corresponding files (MTXQCvX2_part4).

Both workflows are introduced in the distinct chapters including their required input parameter (chapter [Workflow Maui](#wf:maui) and [Workflow Metmax](#wf:metmax)). 



