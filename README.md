# wellcome-2026-rgi-bwt

This repository contains more details for RGI-BWT - The Antimicrobial Resistance – Genomes, Big Data and Emerging Technologies poster presented by A.R Raphenya.


# Abstract Title:

RGI *bwt*: A software pipeline for predicting AMR genes from raw bacterial short-read sequences

# Author(s) Information:

Amogelang R. Raphenya, Brian P. Alcock, Finlay Maguire, Andrew G. McArthur

# Abstract:

Antimicrobial resistance (AMR) genes pose a threat to One Health. Next-generation sequencing in humans, animals, and complex samples such as wastewater can help identify and track the AMR genes that pose a threat. There is a growing number of large unannotated datasets from animals, the environment, and humans. Some of the datasets are large (1.3GB to 10GB) and remain a daunting task to analyze, as it takes a considerable amount of time to obtain results using current bioinformatics methods, leading to a lag in determining the next AMR threat. As such, fast and accurate analytic tools are needed to assess these data. We developed the Resistance Gene Identifier (RGI) software, which uses the actively maintained reference database, the Comprehensive Antibiotic Resistance Database (CARD; https://card.mcmaster.ca), to predict AMR determinants.

We used whole-genome sequencing (WGS) from wastewater and the clinic. High-quality sequencing reads were aligned to CARD canonical and CARD variants (CARD-R) data using RGI’s metagenome module called RGI bwt to predict AMR determinants in the samples. We also used AMR++ (version 3) to predict AMR determinants in the samples and compared results with RGI bwt. 
The RGI *bwt* can predict the same AMR determinants before and after de novo assembly. The RGI *bwt* can also predict AMR determinants with low-quality data, however, more CARD variants are needed to map reads for WGS compared to targeted capture. There is a significant improvement in the speed of obtaining results with the AMR++ version 3; however, differences exist with RGI over annotation of low quality data.
The RGI *bwt* provides an option to skip assembly, making it feasible to process large amounts of data to predict AMR determinants quickly. Mining AMR genes from GenBank to produce the CARD-R dataset allows incorporation of non-clinical allelic variants as reference data. Overall, RGI *bwt* is well-suited for AMR surveillance.
