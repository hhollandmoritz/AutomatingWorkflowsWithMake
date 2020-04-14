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

iris.set <- readRDS(paste0(clean_data.fp, "/iris.set.RDS"))

#### =================================================================================================== ####


#### Question 1: Are sepal length and sepal width related to one another in setosa?
#### =================================================================================================== ####
sep_width_len_set.mod <- lm(SepalLength ~ SepalWidth, data = iris.set)
summary(sep_width_len_set.mod)
#### =================================================================================================== ####


#### Plot
#### =================================================================================================== ####
png(file=paste0(figures.fp, "/setosa_sepal_plot.png"),
    width=600, height=350)
plot(SepalLength ~ SepalWidth, data = iris.set, main = "setosa Sepal Size")
abline(lm(SepalLength ~ SepalWidth, data = iris.set))
dev.off()
#### =================================================================================================== ####

#### Save Data and Figures
#### =================================================================================================== ####
saveRDS(sep_width_len_set.mod, file = paste0(outputs.fp, "/sep_width_len_set.mod.RDS"))
#### =================================================================================================== ####


