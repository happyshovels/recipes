PYTHON := $(shell pwd)/env/bin/python3.7
MD2PDF := $(shell pwd)/env/bin/md2pdf

OUTPUT_DIR := /home/lukas/googledrive/recipes
SRC_DIR := $(OUTPUT_DIR)/source

MARKDOWN_FILES := $(wildcard $(SRC_DIR)/*.md)
PDFS := $(patsubst $(SRC_DIR)/%,$(OUTPUT_DIR)/%, $(MARKDOWN_FILES:.md=.pdf) )
EXISTING_PDFS := $(wildcard $(OUTPUT_DIR)/*.pdf)


all: $(PDFS)


$(OUTPUT_DIR)/%.pdf: $(SRC_DIR)/%.md
	$(MD2PDF) $< $@ 


.PHONY: clean
clean:
	rm -f $(EXISTING_PDFS)
