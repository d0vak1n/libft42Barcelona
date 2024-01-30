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
CFLAGS=-Wall -Wextra -Werror

## Files
FILES= $(NAME).h ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c

$(NAME): $(FILES)
	$(CC) $(FLAGS) $(NAME) *.o

all:

## TESTING:
test: *.o
	$(CC) $(CFLAGS) $@.c $? -o $@
	make clean

*.o: $(FILES)
	$(CC) $(CFLAGS) -c $?
## END TESTING

.PHONY: clean fclean

clean:
	rm -f $(NAME) *.o

fclean:
	rm -rf $(NAME)
