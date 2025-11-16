CC      = gcc
CFLAGS  = -Wall -Wextra -O2
SRC_DIR = src
BIN_DIR = bin

TARGET  = $(BIN_DIR)/main
SRCS    = $(SRC_DIR)/main.c
OBJS    = $(SRCS:.c=.o)

.PHONY: all clean dirs

all: dirs $(TARGET)

dirs:
	mkdir -p $(BIN_DIR)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

