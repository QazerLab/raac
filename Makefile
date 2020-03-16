LATEX = pdflatex

# Split target and auxiliary directories, so that auxiliary build files
# could be added to .gitignore without ignoring the target.
OUT_DIR = target
AUX_DIR = build

.PHONY: all
all: ru en

.PHONY: ru
ru: $(OUT_DIR)/resume_ru.pdf

.PHONY: en
en: $(OUT_DIR)/resume_en.pdf

.PHONY: clean
clean:
	$(RM) -r $(AUX_DIR)

.PHONY: fullclean
fullclean:
	$(RM) -r $(OUT_DIR) $(AUX_DIR)

$(AUX_DIR)/%.pdf: src/%.tex
	mkdir -p $(AUX_DIR)
	$(LATEX) -output-directory $(AUX_DIR) $^

$(OUT_DIR)/%.pdf: $(AUX_DIR)/%.pdf
	mkdir -p $(OUT_DIR)
	mv $^ $@
