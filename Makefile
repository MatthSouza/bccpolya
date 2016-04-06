CC=gcc
CFLAGS=-W -Wall -pedantic -std=c11
LFLAGS=-lm

SRC=$(wildcard *.c)
BIN=$(SRC:.c=)

.PHONY: all clean help

help:
	@echo "Sintaxe: make <opções>"
	@echo "		Opções:"
	@echo "			help  : mostra esta mensagem"
	@echo "			all   : compila todos os fontes da pasta"
	@echo "			clean : apaga todos os binários criados"
	@echo ""

all: $(BIN)

clean:
	@rm -f $(BIM)

%:%.c
	@echo -n "Gerando executável $@"
	@$(CC) $< -o $@ $(CFLAGS) $(LFLAGS) && echo " [OK] "