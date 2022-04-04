# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: dritsema <dritsema@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2022/04/04 18:06:41 by dritsema      #+#    #+#                  #
#    Updated: 2022/04/04 18:50:51 by dritsema      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #


# name of the output file
NAME = main

# Name of the entry point file
SRCS = main.c


SRC_DIR = ./src
BUILD_DIR = ./build

INPUT_PATH = $(SRC_DIR)/$(SRCS)
OUTPUT_PATH = $(BUILD_DIR)/$(NAME)

# Compiler flags
FLAGS = -Wall -Wextra -Werror


all: $(OUTPUT_PATH) $(INPUT_PATH)

# deletes object files
clean:
	rm -f $(OUTPUT_PATH)


# deletes build
fclean: clean
	rm -f $(INPUT_PATH)

# recompiles
re: clean all



$(OUTPUT_PATH):
	gcc -o $(OUTPUT_PATH) $(INPUT_PATH) $(FLAGS)