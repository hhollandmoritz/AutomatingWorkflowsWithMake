.PHONY : knit zip clean all help
.DEFAULT_GOAL := all

# Do everything ========================================================================================
## all: knits the presentation and also zips the examples
all: knit zip

# Make the presentation ================================================================================
## knit: knits the .Rmd presentation into a pdf
knit: knit/make_lesson_pres.pdf
	@echo "knit the presentation"

knit/make_lesson_pres.pdf: knitting_options.R make_lesson_pres.Rmd pres_figures/*.png
	Rscript knitting_options.R
	
# Zip the example folders ==============================================================================
## zip: zips the make_example and make_example_advanced foldes
zip: make_example.zip \
make_example_advanced.zip
	@echo "Zipped examples"

make_example.zip \
make_example_advanced.zip: make_example make_example_advanced
	zip -r $@ $^

# Makefile Cleaning ====================================================================================
## clean : removes all files generated by this makefile. remove-zips will remove the zips, remove-pdf will remove the presentation
clean: remove-zips remove-pdf

remove-zips:
	rm -f *.zip

remove-pdf:
	rm -f knit/*.pdf

# Makefile help ========================================================================================
## help : displays this help message of targets and their actions
help: Makefile
	@echo "Targets to make:"
	@sed -n 's/^##/  /p' $<
	@echo ""