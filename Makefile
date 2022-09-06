CC = gcc
BINDIR = bin
PKGDIR = pkg
BIN = todo
SRCDIR = todo
SRC = *.c
D_FLAGS = -Wall -Wextra -Wfatal-errors -g
R_FLAGS = -Wall -Wextra -Wfatal-errors -O3
INST_DIR = /usr/local/bin

all: clean debug

debug: | $(BINDIR)
	$(CC) -o $(BINDIR)/$(BIN) $(SRCDIR)/$(SRC) $(D_FLAGS)

$(BINDIR):
	mkdir $@

release: | $(PKGDIR)
	$(CC) -o $(PKGDIR)/$(BIN) $(SRCDIR)/$(SRC) $(R_FLAGS)

$(PKGDIR):
	mkdir $@

clean:
	rm -rf $(BINDIR) $(PKGDIR)

install:
	install $(PKGDIR)/$(BIN) $(INST_DIR)

