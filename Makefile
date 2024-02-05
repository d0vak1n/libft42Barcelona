# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ramoreno <ramoreno@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/09 12:36:03 by ramoreno          #+#    #+#              #
#    Updated: 2024/01/09 12:36:09 by ramoreno         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

## Names
NAME=libft.a

## Compile command
CC=gcc
CFLAGS=-Wall -Wextra -Werror -g

## Files
FILES=ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c
OBJS=$(patsubst %.c, %.o, $(FILES))

$(NAME): $(OBJS)
	ar -rvs $@ $^

all: $(NAME)

## TESTING:
test: $(OBJS)
	$(CC) $(CFLAGS) $@.c $? -o $@
	make clean
	./$@

%.o: %.c
	$(CC) $(CFLAGS) -c $^ -o $@
## END TESTING

.PHONY: all clean fclean re

clean:
	rm -f $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all
	echo "hola\n"

## @ Izquierda, ? derecha
