default:
	pandoc --standalone -c style_chmduquesne.css --from markdown --to html -o resume.html resume.md
	/usr/bin/wkhtmltopdf.sh resume.html resume.pdf
