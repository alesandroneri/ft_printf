NAME = libftprintf.a

SRC =	ft_printf.c \
	ft_putchar_count.c \
	ft_putnbr_base_count.c \
	ft_putnbr_count.c \
	ft_putstr_count.c \
	ft_strlen.c \
	ft_put_ptr.c

CC = cc

CC_FLAGS = -Wall -Wextra -Werror

OBJS = $(SRC:.c=.o)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)

.c.o:
	$(CC) $(CC_FLAGS) -c $< -o $(<:.c=.o)

all: $(NAME)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean $(NAME)

run: re
	clear
	$(CC) $(CC_FLAGS) main.c $(NAME)
	./a.out

.PHONY: all clean fclean re run
