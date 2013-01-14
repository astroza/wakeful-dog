CC=gcc
LIBS=-lasound

all: wakeful_dog.o
	$(CC) wakeful_dog.o -o wakeful_dog $(LIBS)

%.o: %.c
	$(CC) -c $? -o $@

clean:
	rm -f wakeful_dog wakeful_dog.o
