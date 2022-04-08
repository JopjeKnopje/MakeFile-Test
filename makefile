CC = gcc
CFLAGS = -Wall -Wextra -Werror

OBJS_DIR = obj/
SRC_DIR = src/
BUILD_DIR = build/


# SOURCES = src/main.c src/libtest.c
OBJECTS = obj/libtest.o obj/main.o

BINARY = $(BUILD_DIR)app


all: $(BINARY)


$(BINARY): $(OBJECTS)
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
$(OBJS_DIR)%.o: $(SRC_DIR)%.c
	$(CC) $(CFLAGS) -c -o $@ $^



re: fclean all

# fclean should clean the arvice
fclean: clean
	@echo "Cleaned archive"

# cleans the object files
clean: 
	rm -rf $(OBJS_DIR)*.o

