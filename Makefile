LIB = ar rcs
NAME = libftprintf.a

cc = gcc
CFLAGS = -Wall -Wextra -Werror

RM = rm -f

SRC = ft_hexad_len.c ft_itoa_unsg.c ft_itoa.c ft_print_hexad_x.c ft_print_pointer.c ft_printf.c ft_putchar.c ft_putstr.c ft_putstr_free.c

OBJ = $(SRC:.c=.o)
INCLUDE= ft_printf.h

all: $(NAME)

$(NAME): $(OBJ)
	$(LIB) $(NAME) $(OBJ)

clean:
	$(RM) $(OBJ)
fclean: clean
	$(RM) $(NAME)
re:		fclean all

.PHONY:	all clean fclean re