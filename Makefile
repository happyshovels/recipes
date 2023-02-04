PYTHON := /Users/lukas/.pyenv/versions/3.8.12/bin/python3
MD2PDF := /opt/homebrew/bin/md2pdf

OUTPUT_DIR := /Users/lukas/dropbox/recipes
SRC_DIR := $(shell pwd)/source

MARKDOWN_FILES := $(wildcard $(SRC_DIR)/*.md)
PDFS := $(patsubst $(SRC_DIR)/%,$(OUTPUT_DIR)/%, $(MARKDOWN_FILES:.md=.pdf) )
EXISTING_PDFS := $(wildcard $(OUTPUT_DIR)/*.pdf)


all: $(PDFS)


$(OUTPUT_DIR)/%.pdf: $(SRC_DIR)/%.md
	$(MD2PDF) --css=style.css $< $@ 


.PHONY: clean
clean:
	rm -f $(EXISTING_PDFS)
