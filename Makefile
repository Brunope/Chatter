CC = gcc
CFLAGS = -g -std=gnu99 -Wall
NOWARN = -g -std=gnu99
CLIENT_FILES = client.c utils.c
SERVER_FILES = server.c utils.c

all: client-server

client-server: clean client server

client:
	$(CC) -o client $(CLIENT_FILES)

server:
	$(CC) -o server $(SERVER_FILES)

clean:
	rm -f client server