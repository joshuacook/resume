default:
	pandoc --standalone -c style.css --from markdown --to html -o resume.html resume.md
	wkhtmltopdf resume.html resume.pdf
