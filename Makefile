CC=gcc
CFLAGS=-g -Wall `pkg-config --cflags sdl2` -DDEBUG
LDFLAGS=`pkg-config --libs SDL2_image SDL2_mixer SDL2_ttf`

SRC=$(wildcard *.c)
OBJ=$(SRC:.c=.o)
TARGET=mahjong

.PHONY: all

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(LDFLAGS) -o $@ $^

clean: 
	rm -f $(TARGET) $(OBJ)
