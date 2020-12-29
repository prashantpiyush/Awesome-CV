# -.- Makefile -.-

CC = xelatex
RESUME_DIR = myresume
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
DDATE := $(shell date $(offset) +%Y_%m_%d)

examples: $(foreach x, coverletter cv resume, $x.pdf)

resume.pdf: $(RESUME_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(RESUME_DIR) $<

copy:
	cp $(RESUME_DIR)/resume.pdf Abhinav_Sharma_Resume.pdf

clean:
	rm -r $(RESUME_DIR)/*.aux
	rm -r $(RESUME_DIR)/*.log
	rm -r $(RESUME_DIR)/*.out
	rm -r $(RESUME_DIR)/*.pdf
	