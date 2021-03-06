# ASMS 2022 R Short Course
# Working with dplyr, MS Examples
# 

# BE SURE TO LOAD THE TIDYVERSE LIBRARY
library(tidyverse)

# Exercise #1 -- Reading Data
# 
# 1.1 Read the example data from a proteomics experiment
#     NOTE: file is a zipped .csv file -- R knows how to read it!
dat <- read_csv("data/Choi2017_DDA_Skyline_input.csv.zip", guess_max = 10000)


# Exercise #2 -- Subsetting rows (filter)
#
# 2.1 Subset the data to rows for the protein "sp|P33399|LHP1_YEAST", using
#     a dplyr pipeline.


# 2.2 How many rows and columns did you get from 2.1, and how does this compare
#     to the number of rows and columns you get when you subset the
#     data using data frame indexing syntax?


# 2.3 Subset the data further to rows for the protein "sp|P33399|LHP1_YEAST"
#     and for the experiment file name "JD_06232014_sample1-A.raw".  Try
#     writing a single dplyr pipeline that accomplishes this task starting from
#     the original data you read in during 1.1 above.


# 2.4 Review the results from the subsetted data from 2.3 (hint: View).
#     Does this help explain the structure of the data?


# Exercise #3 -- Group By + Summarize
#
# 3.1 Describe, in plain English, how you might go about determining the number of
#     unique peptide sequences identified for each protein in the data.  If you were
#     to do this in code, what column names would you need to consider to accomplish
#     this task?


# 3.2 Write a dplyr pipeline do the above task.  Does the code you wrote have similarities
#     to the way you described the task in 3.1?


# Exercise #4 -- Thinking more about dplyr verbs
#
# 4.1 What dplyr verb would you use to do the following things 
#     (just identify the appropriate dplyr verb, not the code to do the task):
#     - remove rows that contain DECOY proteins
#     - only show the columns ProteinName and PeptideSequence
#     - only keep proteins that have at least 10 unique peptide sequences
#     - order the data based on PrecursorMz


# 4.2 A template for a dplyr pipeline is given below, but has missing information
#     noted by ***.  Replace each *** with the appropriate code so that the pipeline
#     does the following:
#       Starting with the input data...
#       1. remove rows for DECOY proteins
#       2. then, count the number of unique peptides per protein
#       3. then, subset the results to proteins that have at least 10 peptides
#       4. then, order the results by the number of peptides in descending order
#    You only need to replace the ***'s -- no other modifications to the code
#    is needed.  You may not understand all the code, but try to guess base on the
#    information provided.
dat %>%
  filter(!str_starts(***, "DECOY")) %>%
  group_by(***) %>%
  summarize(n_peptides = ***) %>%
  filter(*** >= ***) %>%
  arrange(desc(***))
  


