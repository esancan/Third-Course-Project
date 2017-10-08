# ADLTidyData

This scripts generates a tidy dataset from the ["Human Activity Recognition Using Smartphones Data Set"](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).


## Running the script

Run `source("run_analysis.R")` in R

The `tidyData.txt` file contains all the features of the original dataset that represents mean and standard deviation for each subject id and activity. But, features values belonging to the same unique subject id/actitivity pair are grouped together with a mean operation.

For a detailed description of this table, see the included `CookBook.md`.

## Understanding step by step how the `tidyData.txt` was generated

Please, see the accompanying `run_analysis.R` script for a step by step instruction on how this dataset was generated. The provided script contains comments and descriptive variables names to walk you through the steps taken to generate this dataset.
