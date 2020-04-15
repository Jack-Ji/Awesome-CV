.PHONY: clean

CC = xelatex
RESUME_DIR = resume
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

resume.pdf: resume.tex $(RESUME_SRCS)
	$(CC) $<

clean:
	rm -rf *.out *.aux *.log *.pdf
