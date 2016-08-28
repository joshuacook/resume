FROM tianon/latex 

COPY resume.tex /source/resume.tex

ENTRYPOINT ["context /source/resume.tex"]
