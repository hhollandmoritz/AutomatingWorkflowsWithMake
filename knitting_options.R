# kniting one report at a time to an html document
library(knitr)
library(rmarkdown)

# Create knit directory
project.fp <- "/home/hannah/Documents/Fierer_lab/CME/Automating Workflows with Make"
knit.fp <- paste0(project.fp, "/knit")
code.fp <- paste0(project.fp, "/code") # location of your scripts, sometimes this might be different than your projects directory

if (!dir.exists(knit.fp)) {dir.create(knit.fp)}

#### Knitting Part 1: NameOfPart1 ####
if (!file.exists(paste0(knit.fp, "/make_lesson_pres.Rmd"))) {
  file.symlink(from = paste0(project.fp, "/make_lesson_pres.Rmd"),
               to = paste0(knit.fp, "/make_lesson_pres.Rmd"))
}
rmarkdown::render(paste0(knit.fp, "/make_lesson_pres.Rmd"), "beamer_presentation", output_dir = knit.fp)
#### =================================================================================================== ####
