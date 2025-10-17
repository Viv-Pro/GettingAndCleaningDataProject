# Getting and Cleaning Data - Course Project

## Overview
This repository contains the submission for the Coursera **Getting and Cleaning Data** course project.  
The goal of this project is to demonstrate the ability to collect, clean, and prepare data for analysis.

## Files
- `run_analysis.R` — the R script that performs the analysis.
- `tidy_data.txt` — the output of the analysis: a tidy dataset with averages of each variable for each activity and subject.
- `CodeBook.md` — describes the variables, data, and transformations performed.
- `README.md` — explains the project and how to run the script.

## How to Run the Script
1. Download the dataset from:
   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Unzip it into your working directory.
3. Place the `run_analysis.R` script in the same directory.
4. In R, run:
   ```r
   source("run_analysis.R")
