docs/transformers.html: *.md
	cat templates/markdown_header.html > docs/transformers.html && \
		cat einleitung.md >> docs/transformers.html && \
		cat templates/markdown_seperator.html >> docs/transformers.html && \
			cat ausblick.md >> docs/transformers.html && \
	cat templates/markdown_footer.html >> docs/transformers.html

docs/transformers.pdf: docs/transformers.html
	cd docs && \
	chromium --headless --no-margins --print-to-pdf="transformers.pdf" "transformers.html?print-pdf"

all: docs/transformers.html docs/transformers.pdf

clean:
	rm docs/transformers.html
