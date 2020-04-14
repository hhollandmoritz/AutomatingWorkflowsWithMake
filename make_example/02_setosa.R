#### Read in data 
#### =================================================================================================== ####
# Read in data

iris.set <- readRDS("iris.set.RDS")
#### =================================================================================================== ####


#### Question 1: Are sepal length and sepal width related to one another in setosa?
#### =================================================================================================== ####
sep_width_len_set.mod <- lm(SepalLength ~ SepalWidth, data = iris.set)
summary(sep_width_len_set.mod)
#### =================================================================================================== ####

#### Plot
#### =================================================================================================== ####
png(file="setosa_sepal_plot.png",
    width=600, height=350)
plot(SepalLength ~ SepalWidth, data = iris.set, main = "setosa Sepal Size")
abline(lm(SepalLength ~ SepalWidth, data = iris.set))
dev.off()
#### =================================================================================================== ####


