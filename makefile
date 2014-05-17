PROJECT=disk_indicator
COMPILER=c99
LINK_FLAGS=-lm
COMPILE_FLAGS=-Wall -pedantic -Werror -g -D _BSD_SOURCE
OBJECTS=main.o

all: $(PROJECT)

%.o: src/%.c src/%.h
	$(COMPILER) $(COMPILE_FLAGS) -c -s $<

$(PROJECT): $(OBJECTS)
	$(COMPILER) $(LINK_FLAGS) $(OBJECTS) -o $(PROJECT)

clean:
	rm $(PROJECT) *.o
