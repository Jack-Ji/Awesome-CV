.PHONY: clean

CC = xelatex
RESUME_ZH_SRCS = $(shell find resume_zh -name '*.tex')
RESUME_EN_SRCS = $(shell find resume_en -name '*.tex')

all: resume_zh.pdf resume_en.pdf

resume_zh.pdf: resume_zh.tex $(RESUME_ZH_SRCS)
	-$(CC) $<

resume_en.pdf: resume_en.tex $(RESUME_EN_SRCS)
	-$(CC) $<

clean:
	rm -rf *.out *.aux *.log *.pdf
