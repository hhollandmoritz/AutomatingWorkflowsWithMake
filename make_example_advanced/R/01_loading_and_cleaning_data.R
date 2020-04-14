#### Set up input and output directories
#### =================================================================================================== ####
#+ directory creation, eval = FALSE
# setting up names of file paths to stay organized
source("R/00_directory_setup.R")
#'
#### =================================================================================================== ####

#### Read in data 
#### =================================================================================================== ####
# Read in data

iris.raw <- read.table(paste0(raw_data.fp, "/iris.txt"), sep = "\t", header = TRUE)

#### =================================================================================================== ####


# Change column names
#### =================================================================================================== ####
iris <- iris.raw
names(iris) <- c("SepalLength", "SepalWidth", "PetalLength", "PetalWidth", "Species")

#### =================================================================================================== ####

#### Separate data by species
#### =================================================================================================== ####
iris.set <- subset(iris, Species == "setosa")

iris.ver <- subset(iris, Species == "versicolor")

iris.vir <- subset(iris, Species == "virginica")

#### =================================================================================================== ####

#### Save Data and Figures
#### =================================================================================================== ####

# Save full data
saveRDS(iris, file = paste0(clean_data.fp, "/iris.RDS"))

# Save subsetted data
saveRDS(iris.set, file = paste0(clean_data.fp, "/iris.set.RDS"))
saveRDS(iris.ver, file = paste0(clean_data.fp, "/iris.ver.RDS"))
saveRDS(iris.vir, file = paste0(clean_data.fp, "/iris.vir.RDS"))

#### =================================================================================================== ####
