# read in data from a file, a .csv file
# no assignment!
read.csv("data/bacterial-peak-data.csv")

# assigned to new variable "peak_data"
peak_data <- read.csv("data/bacterial-peak-data.csv")

# variable access in a data.frame
# str(peak_data)
# peak_data$...


# print highest m/z value in peak data
max(peak_data$mz)

# or get m/z range
range(peak_data$mz)

# see which variables are there
colnames(peak_data)

# multiply FWHM values by 1.3, expanding window
peak_data$fwhm * 1.3


# adding two vectors
# vectors are operated on element by element
# make sure they are the same length!
peak_data$mz + peak_data$fwhm
peak_data$mz * mass_error


# common math functions
length(peak_data$mz)
min(peak_data$snr)
max(peak_data$snr)
mean(peak_data$snr)
sd(peak_data$snr)


# index vector and replace values
peak_data$fwhm * 1.3
peak_data$fwhm <- peak_data$fwhm * 1.3
peak_data$fwhm_expanded <- peak_data$fwhm * 1.3

mzs <- peak_data$mz



# simple indexing
# grabs first m/z value
mzs[1]


# subset indexing
# grabs first five m/z values
# ':' operator 
mzs[1:5]


# indexing based on a condition
mzs_above_103 <- mzs > 103

# print indexed mzs as sanity check
mzs[mzs_above_103]


# indexing odd-indexed m/z using integer vector
mzs[c(1,3,5,7,9)]


# conditional indexing
peak_data[peak_data$mz > 650,]


