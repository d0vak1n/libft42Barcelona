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
FLAGS=-Wall -Wextra -Werror -g -o

$(NAME): libft.h ft_isalpha.o
	$(CC) $(FLAGS) $(NAME) ft_isalpha.o

ft_isalpha.o: ft_isalpha.c libft.h
	$(CC) -c ft_isalpha.c

.PHONY: clean fclean

clean:
	rm -f $(NAME) *.o

fclean:
	rm -rf $(NAME)
