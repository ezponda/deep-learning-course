# Makefile for Deep Learning Course

PYTHON ?= python3
BOOK_DIR := book

.PHONY: install build clean help

# Default target
help:
	@echo "Available targets:"
	@echo "  install  - Install dependencies"
	@echo "  build    - Build the Jupyter Book"
	@echo "  clean    - Remove build artifacts"
	@echo "  serve    - Build and serve locally"

# Install dependencies
install:
	$(PYTHON) -m pip install -r requirements.txt

# Build book
build:
	jupyter-book build $(BOOK_DIR)

# Clean build artifacts
clean:
	rm -rf $(BOOK_DIR)/_build

# Build and serve locally
serve: build
	@echo "Opening book in browser..."
	@open $(BOOK_DIR)/_build/html/index.html 2>/dev/null || xdg-open $(BOOK_DIR)/_build/html/index.html 2>/dev/null || echo "Open $(BOOK_DIR)/_build/html/index.html in your browser"
