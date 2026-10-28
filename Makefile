CC = gcc
CFLAGS = -O2

TARGET = is
PREFIX = /usr/local
BINDIR = $(PREFIX)/bin

SRCS = main.c
OBJS = $(SRCS:.c=.o)
SCRIPTS = gnu.sh

all: $(TARGET) permissions

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

permissions:
	chmod +x $(SCRIPTS)

install: all
	mkdir -p $(DESTDIR)$(BINDIR)
	cp $(TARGET) $(DESTDIR)$(BINDIR)/
	cp $(SCRIPTS) $(DESTDIR)$(BINDIR)/

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/$(TARGET)
	$(foreach script,$(SCRIPTS),rm -f $(DESTDIR)$(BINDIR)/$(script);)

clean:
	rm -f $(TARGET) $(OBJS)

.PHONY: all permissions install uninstall clean
