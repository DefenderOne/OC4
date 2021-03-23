NAME=kramarev_compiled
SOURCES=$(wildcard ./src/*.cpp)

SRC = $(CURDIR)/src
OBJ = $(CURDIR)/obj
BIN = $(CURDIR)/bin

obj:
	@mkdir $(CURDIR)/obj

bin:
	@mkdir $(CURDIR)/bin

$(OBJ)/main.o: $(SRC)/main.cpp
	@g++ -c $< -o $@
	@echo "Complied $@"

$(OBJ)/module.o: $(SRC)/module.cpp
	@g++ -c $< -o $@
	@echo "Complied $@"

build: obj $(OBJ)/main.o $(OBJ)/module.o bin
	@g++ $(wildcard $(OBJ)/*.o) -o $(BIN)/$(NAME)
	@echo "Complied and placed in $(BIN) as $(NAME)"

copy:
	@mkdir -p ~/bin/ && cp $(BIN)/$(NAME) ~/bin/$(NAME)

clean:
	@rm -rf $(OBJ) $(BIN)
	@echo "Project cleaned"


install: build copy clean
	@echo "Installed in $(echo ~/bin/)"

