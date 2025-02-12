CC = $(CROSS_COMPILE)gcc
CFLAGS = -Wall -Wextra -Werror
WRITER_TARGET = writer
SHOWIP_TARGET = showip
SERVERDEMO_TARGET = serverDemo
CLIENTDEMO_TARGET = clientDemo

.PHONY: all clean

all: $(WRITER_TARGET) $(SHOWIP_TARGET) $(SERVERDEMO_TARGET) $(CLIENTDEMO_TARGET)
	rm -r *.o

$(WERITER_TARGET): writer.o
	$(CC) $(CFLAGS) -o $(WRITER_TARGET) writer.o

writer.o: writer.c
	$(CC) $(CFLAGS) -c writer.c

$(SHOWIP_TARGET): showip.o
	$(CC) $(CFLAGS) -o $(SHOWIP_TARGET) showip.o

showip.o: showip.c
	$(CC) $(CFLAGS) -c showip.c

$(SERVERDEMO_TARGET): serverDemo.o
	$(CC) $(CFLAGS) -o $(SERVERDEMO_TARGET) serverDemo.o

serverDemo.o: serverDemo.c
	$(CC) $(CFLAGS) -c serverDemo.c

$(CLIENTDEMO_TARGET): clientDemo.o
	$(CC) $(CFLAGS) -o $(CLIENTDEMO_TARGET) clientDemo.o

clientDemo.o: clientDemo.c
	$(CC) $(CFLAGS) -c clientDemo.c

clean:
	rm -f $(WRITER_TARGET) $(SHOWIP_TARGET) $(SERVERDEMO_TARGET) $(CLIENTDEMO_TARGET) *.o

