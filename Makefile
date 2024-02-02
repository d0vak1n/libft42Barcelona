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
NAME=libft
ENAME=libft.a

## Compile command
CC=cc
CFLAGS=-Wall -Wextra -Werror -g

## Files
FILES=ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c
OBJS=$(patsubst %.c, %.o, $(FILES))

$(NAME): $(FILES)
	$(CC) $(FLAGS) $(NAME) $(OBJS)

all:

## TESTING:
test: $(OBJS)
	$(CC) $(CFLAGS) $@.c $? -o $@
	make clean
	./$@

$(OBJS): $(FILES)
	$(CC) $(CFLAGS) -c $?
## END TESTING

.PHONY: clean fclean

clean:
	rm -f $(OBJS)

fclean: clean
	rm -rf $(NAME)

## @ Izquierda, ? derecha
