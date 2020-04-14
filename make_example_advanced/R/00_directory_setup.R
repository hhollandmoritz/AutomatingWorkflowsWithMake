#+ directory creation
# setting up names of file paths to stay organized

project.fp <- getwd()
#project.fp <- "/home/hannah/Documents/Fierer_lab/CME/Automating Workflows with Make/make_example" # CHANGE ME to full path to your project location
raw_data.fp <- file.path(project.fp, "00_raw_data")
clean_data.fp <- file.path(project.fp, "01_cleaned_data")

figures.fp <- file.path(project.fp, "figures")

outputs.fp <- file.path(project.fp, "outputs")

# Set up directories


if (!dir.exists(clean_data.fp)) {dir.create(clean_data.fp, recursive = TRUE)}
if (!dir.exists(figures.fp)) {dir.create(figures.fp, recursive = TRUE)}
if (!dir.exists(outputs.fp)) {dir.create(outputs.fp, recursive = TRUE)}

