# Automated RNA-seq Analysis Pipeline using Snakemake and Galaxy

## Project Overview

This project demonstrates an automated RNA-seq analysis workflow for E. coli transcriptome data using Snakemake, Galaxy, Linux, and R.

## Workflow

FastQC → Trimmomatic → HISAT2 → featureCounts → DESeq2

## Tools Used

* Snakemake
* Linux
* Galaxy
* FastQC
* Trimmomatic
* HISAT2
* featureCounts
* DESeq2
* R

## Outputs

* Quality control reports
* Trimmed FASTQ files
* Gene count matrix
* Differential expression analysis
* Volcano plot

## Project Structure

* workflow/ : Snakemake workflow files
* scripts/ : R scripts for count merging and DESeq2 analysis
* config/ : sample configuration
* results/ : count matrix and DESeq2 outputs

## Differential Expression Visualization

The volcano plot below shows differential gene expression results generated using DESeq2.

* X-axis: Log2 Fold Change
* Y-axis: -log10 p-value

Genes with higher significance and fold change indicate strong differential expression between control and treated samples.


## Notes

Alignment and feature quantification were executed in Galaxy due to local WSL resource instability during large-scale alignment processing.
