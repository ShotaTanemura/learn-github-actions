NAME		:= learn-github-actions
CC			:= cc
CFLAGS		:= -Wall -Wextra #-Werror

SRC_FILES	:= main.c

SRC_DIR		:= src
OBJ_DIR		:= obj

SRCS	:= $(SRC_FILES:%.c=$(SRC_DIR)/%.c)
OBJS	:= $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRCS))


$(NAME): $(OBJS)
	$(CC) -o $(NAME) $(OBJS) $(CFLAGS)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

all: $(NAME)

clean:
	@rm -rf $(OBJ_DIR)

fclean: clean
	@rm -f $(NAME)

re: fclean all


.PHONY: all clean fclean re