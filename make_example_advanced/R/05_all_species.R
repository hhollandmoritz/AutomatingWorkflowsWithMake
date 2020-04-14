# clean environment to start
rm(list = ls())

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

iris <- readRDS(paste0(clean_data.fp, "/iris.RDS"))
#### =================================================================================================== ####


#### Figure 1: The relationship between sepal width and length in all species
#### =================================================================================================== ####
sepal_width_len_all.mod <- lm(SepalLength ~ SepalWidth, data = iris)

#### =================================================================================================== ####

#### =================================================================================================== ####

png(file=paste0(figures.fp, "/iris_sepal_plot.png"),
    width=600, height=350)
plot(SepalLength ~ SepalWidth, data = iris, main = "Iris Sepal Size")
abline(lm(SepalLength ~ SepalWidth, data = iris))
dev.off()
#### =================================================================================================== ####

#### Save Data and Figures
#### =================================================================================================== ####
saveRDS(sepal_width_len_all.mod, file = paste0(outputs.fp, "/sepal_width_len_all.mod.RDS"))
#### =================================================================================================== ####


