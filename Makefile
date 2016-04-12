all: pdf

pdf: resume.pdf
resume.pdf: resume.md
	pandoc --standalone --template style_chmduquesne.tex \
	--from markdown --to context \
	-o resume.tex resume.md; \
	context resume.tex

html: resume.html
resume.html: style_chmduquesne.css resume.md
	pandoc --standalone -H style_chmduquesne.css \
        --from markdown --to html \
        -o resume.html resume.md

clean:
	rm resume.tex
	rm resume.tuc
	rm resume.log
	rm resume.pdf
