CXXFLAGS += -std=c++11 -Wall -Wextra -pedantic
PREFIX ?= /usr/local

termux-elf-cleaner-5: termux-elf-cleaner-5.cpp

clean:
	rm -f termux-elf-cleaner-5

install: termux-elf-cleaner-5
	mkdir -p $(PREFIX)/bin
	install termux-elf-cleaner-5 -m 755 -t $(PREFIX)/bin

uninstall:
	rm -f $(PREFIX)/bin/termux-elf-cleaner-5

.PHONY: clean install uninstall
