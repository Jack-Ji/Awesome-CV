.PHONY: clean

CC = xelatex
EXAMPLES_DIR = examples
RESUME_DIR = examples/resume
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')

resume.pdf: $(EXAMPLES_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

clean:
	rm -rf $(EXAMPLES_DIR)/*.out $(EXAMPLES_DIR)/*.aux $(EXAMPLES_DIR)/*.log $(EXAMPLES_DIR)/*.pdf *.log *.out *.aux
