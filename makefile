NAME = main


SRCS =	main.c \
		libtest.c


INPUT_PATH = $(patsubst %.c, $(SRC_DIR)/%.c, $(SRCS))


SRC_DIR = ./src
BUILD_DIR = ./build


BIN_PATH = $(BUILD_DIR)/$(NAME)

# Compiler flags
FLAGS = -Wall -Wextra -Werror -g 


all: $(BIN_PATH)

# deletes object files
clean:
	rm -f $(BIN_PATH)


# deletes build
fclean: clean
	rm -f $(INPUT_PATH)

# recompiles
re: clean all


run:
	$(BIN_PATH)



$(BIN_PATH): $(INPUT_PATH)
	gcc -o $(BIN_PATH) $(INPUT_PATH) $(FLAGS)
	