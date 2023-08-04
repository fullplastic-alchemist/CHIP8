NAME = chip8 
CC = gcc 
CFLAGS = -g 

INCLUDE = -I include/

SRC_PATH = src/
SRCS = chip8.c chip8keyboard.c chip8memory.c chip8screen.c chip8stack.c

OBJ_PATH = build/
OBJ = $(SRCS:.c=.o)
OBJS = $(addprefix $(OBJ_PATH), $(OBJ))

all: $(NAME)

$(OBJ_PATH)%.o: $(SRC_PATH)%.c 
	@$(CC) $(CFLAGS) -c $< -o $@ $(INCLUDE)

$(OBJS): $(OBJ_PATH)

$(OBJ_PATH):
	@mkdir $(OBJ_PATH)

$(NAME): $(OBJS)
	@$(CC) $(CFLAGS) $(INCLUDE) $(SRC_PATH)main.c $(OBJS) -lSDL2 -o bin/$(NAME)

clean:
	@rm -rf $(OBJ_PATH)

fclean:
	@rm bin/$(NAME)

run: $(NAME)
	bin/$(NAME) bin/ROMS/$(GAME)

re: fclean all

.PHONY: clean fclean re all
