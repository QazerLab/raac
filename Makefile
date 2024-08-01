LATEX = pdflatex

OUT_DIR = $(CURDIR)/target

.PHONY: all
all: ru en

.PHONY: ru
ru: $(OUT_DIR)/resume_ru.pdf

.PHONY: en
en: $(OUT_DIR)/resume_en.pdf

# XXX: while it would be nice to use -out-directory to keep all pdflatex's
# private trash out of root dir, we can't do this, as this option affects
# everything, including TFM files.
#
# Unfortunately, it seems that there is no way to make pdflatext look for
# TFM files directly in specific directory. $TEXMFVAR is not sufficient for
# this, as it points to the root of complex directory structure.
#
# The unpleasant compromise is the following: we let pdflatex to place aux
# files where it wants (which includes placing TFM files in the right place
# where pdflatex then would be able to find theme) and enumerate all kinds
# of trash that gets into the project root in clean target / .gitignore rather
# than just using aux directory.
#
# I still believe that this could be done better somehow.
%.pdf: src/%.tex
	$(LATEX) $^

$(OUT_DIR)/%.pdf: %.pdf
	mkdir -p $(OUT_DIR)
	mv $^ $@

.PHONY: clean
clean:
	$(RM) *.out *.aux *.log

.PHONY: fullclean
fullclean: clean
	$(RM) -r $(OUT_DIR)
