CC = $(CROSS_COMPILE)gcc
CFLAGS = -Wall -Wextra -Werror
WRITER_TARGET = writer
SHOWIP_TARGET = showip
SERVERDEMO_TARGET = serverDemo
CLIENTDEMO_TARGET = clientDemo
LISTENER_TARGET = listener
TALKER_TARGET = talker
POLLSERVER_TARGET = pollserver
SELECT_TARGET = select
SELECTSERVER_TARGET = selectserver
BROADCASTER_TARGET = broadcaster
SELFSOCKET_TARGET = selfsocket

.PHONY: all clean
 
all: $(WRITER_TARGET) $(SHOWIP_TARGET) $(SERVERDEMO_TARGET) $(CLIENTDEMO_TARGET) $(LISTENER_TARGET) $(TALKER_TARGET) $(POLLSERVER_TARGET) $(SELECT_TARGET) $(SELECTSERVER_TARGET) $(BROADCASTER_TARGET) $(SELFSOCKET_TARGET)
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

$(LISTENER_TARGET): listener.o
	$(CC) $(CFLAGS) -o $(LISTENER_TARGET) listener.o

listener.o: listener.c
	$(CC) $(CFLAGS) -c listener.c

$(POLLSERVER_TARGET): pollserver.o
	$(CC) $(CFLAGS) -o $(POLLSERVER_TARGET) pollserver.c

pollserver.o: pollserver.c
	$(CC) $(CFLAGS) -c pollserver.c

$(TALKER_TARGET): talker.o
	$(CC) $(CFLAGS) -o $(TALKER_TARGET) talker.o

talker.o: talker.c
	$(CC) $(CFLAGS) -c talker.c


$(SELECT_TARGET): select.o
	$(CC) $(CFLAGS) -o $(SELECT_TARGET) select.o

select.o: select.c
	$(CC) $(CFLAGS) -c select.c


$(SELECTSERVER_TARGET): selectserver.o
	$(CC) $(CFLAGS) -o $(SELECTSERVER_TARGET) selectserver.o

selectserver.o: selectserver.c
	$(CC) $(CFLAGS) -c selectserver.c


$(BROADCASTER_TARGET): broadcaster.o
	$(CC) $(CFLAGS) -o $(BROADCASTER_TARGET) broadcaster.o

broadcaster.o: broadcaster.c
	$(CC) $(CFLAGS) -c broadcaster.c

$(SELFSOCKET_TARGET): selfsocket.o
	$(CC) $(CFLAGS) -o $(SELFSOCKET_TARGET) selfsocket.o

selfsocket.o: selfsocket.c
	$(CC) $(CFLAGS) -c selfsocket.c

clean:
	rm -f $(WRITER_TARGET) $(SHOWIP_TARGET) $(SERVERDEMO_TARGET) $(CLIENTDEMO_TARGET) *.o $(LISTENER_TARGET) $(TALKER_TARGET) $(POLLSERVER_TARGET) $(SELECT_TARGET) $(SELECTSERVER_TARGET) $(BROADCASTER_TARGET) $(SELFSOCKET_TARGET)

