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

iris.vir <- readRDS(paste0(clean_data.fp, "/iris.vir.RDS"))

#### =================================================================================================== ####


#### Question 1: Are sepal length and sepal width related to one another in virginica?
#### =================================================================================================== ####
sep_width_len_vir.mod <- lm(SepalLength ~ SepalWidth, data = iris.vir)
summary(sep_width_len_vir.mod)
#### =================================================================================================== ####


#### Plot
#### =================================================================================================== ####
png(file=paste0(figures.fp, "/virginica_sepal_plot.png"),
    width=600, height=350)
plot(SepalLength ~ SepalWidth, data = iris.vir, main = "virginica Sepal Size")
abline(lm(SepalLength ~ SepalWidth, data = iris.vir))
dev.off()
#### =================================================================================================== ####

#### Save Data and Figures
#### =================================================================================================== ####
saveRDS(sep_width_len_vir.mod, file = paste0(outputs.fp, "/sep_width_len_vir.mod.RDS"))
#### =================================================================================================== ####


