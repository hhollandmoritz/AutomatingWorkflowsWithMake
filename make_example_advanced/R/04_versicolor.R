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

iris.ver <- readRDS(paste0(clean_data.fp, "/iris.ver.RDS"))

#### =================================================================================================== ####


#### Question 1: Are sepal length and sepal width related to one another in versicolor?
#### =================================================================================================== ####
sep_width_len_ver.mod <- lm(SepalLength ~ SepalWidth, data = iris.ver)
summary(sep_width_len_ver.mod)
#### =================================================================================================== ####


#### Plot
#### =================================================================================================== ####
png(file=paste0(figures.fp, "/versicolor_sepal_plot.png"),
    width=600, height=350)
plot(SepalLength ~ SepalWidth, data = iris.ver, main = "versicolor Sepal Size")
abline(lm(SepalLength ~ SepalWidth, data = iris.ver))
dev.off()
#### =================================================================================================== ####

#### Save Data and Figures
#### =================================================================================================== ####
saveRDS(sep_width_len_ver.mod, file = paste0(outputs.fp, "/sep_width_len_ver.mod.RDS"))
#### =================================================================================================== ####


