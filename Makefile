conway: life.o main.o
	gcc main.o life.o -o conway

%.o: %.c
	gcc -o $@ -c $^

clean:
	rm -f conway
	rm -rf *.o

install: conway
	sudo cp conway /user/local/bin
