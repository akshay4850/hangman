all: Game.exe install clean
Game.exe: Game.o
	@echo "Compiling Object files"
	gcc -o Game.exe game.o main.o dictio.o
Game.o:
	@echo "Compiling C files"
	gcc -c game.c main.c dictio.c
install: Game.exe
	@echo "Copying executable file to the bin dirctory"
	cp Game.exe ./bin
clean:
	@echo "Performing Cleanup"
	rm *.o

