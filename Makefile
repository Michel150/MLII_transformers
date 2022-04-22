out/transformers.html: *.md
	cat templates/markdown_header.html > out/transformers.html && \
	cat markdown.md >> out/transformers.html && \
	cat templates/markdown_footer.html >> out/transformers.html

#out/transformers.pdf: out/transformers.md out/transformers/index.html
#	cd out && \
#	chromium --headless --no-margins --print-to-pdf="transformers.pdf" transformers/index.html

all: out/transformers.html

clean:
	rm -rf out && mkdir out