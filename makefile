BINARY = app

BUID_DIR = build/
# SRC_DIR = . src/
SRC_DIR = src/
INC_DIR =. include/
OBJ_DIR = obj/

CC = gcc

# generate .d files that encode make rules for the .h depenendencies
DEPFLAGS = -MP -MD
# add -I and $(DEPFLAGS) to each include directory
CFLAGS = -Wall -Wextra -Werror -g $(foreach D,$(INC_DIR),-I$(D) $(DEPFLAGS))


# SRC_FILES = $(foreach D, $(SRC_DIR), $(wildcard $(D)/*.c)) 
SRC_FILES = $(foreach D, $(SRC_DIR), $(wildcard $(D)*.c)) 

# take all the SRC_FILES and replace %.c to %.o
# OBJ_FILES = $(patsubst %.c,%.o,$(SRC_FILES))
OBJ_FILES = $(subst $(SRC_DIR), $(OBJ_DIR), $(patsubst %.c,%.o,$(SRC_FILES)))

# Same thing here only with %.d files
# DEP_FILES = $(patsubst %.c,%.d,$(SRC_FILES))
DEP_FILES = $(subst $(SRC_DIR), $(OBJ_DIR), $(patsubst %.c,%.d,$(SRC_FILES)))


all: $(BINARY)


$(BINARY): $(OBJ_FILES)
	$(CC) -o $@ $^


# % regex wildcard.
# %@ take the thing on the left side of the :
# so in this case %.o
# $^ is the thing on the right so %.c
# all the .o files in the $(OBJS_DIR) 
# depend on all the .c files in the $(SRC_DIR)
# here we run the compiler to compile object files.
# -c means don't run the linker
# -o is the output file location
# %.o:%.c
$(OBJ_DIR)%.o:$(SRC_DIR)%.c
	$(CC) $(CFLAGS) -c -o $@ $<



re: clean all


# cleans the object files
clean: 
	rm -rf $(BINARY) $(OBJ_FILES) $(DEP_FILES)
