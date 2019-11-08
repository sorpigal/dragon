PREFIX = $(HOME)/.local

all: dragon

dragon: dragon.c
	$(CC) --std=c99 -Wall $(DEFINES) dragon.c -o dragon `pkg-config --cflags gtk+-3.0` `pkg-config --libs gtk+-3.0`

install: dragon
	mkdir -p $(PREFIX)/bin
	cp dragon $(PREFIX)/bin
