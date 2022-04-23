docs/transformers.html: *.md
	cat templates/markdown_header.html > docs/transformers.html && \
	cat markdown.md >> docs/transformers.html && \
	cat templates/markdown_footer.html >> docs/transformers.html

#docs/transformers.pdf: docs/transformers.md docs/transformers/index.html
#	cd docs && \
#	chromium --headless --no-margins --print-to-pdf="transformers.pdf" transformers/index.html

all: docs/transformers.html

clean:
	rm -rf docs && mkdir docs
