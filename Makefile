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

#Binary name
NAME=libft.a
#Compile command
CC=cc -Wall -Wextra -Werror -g -o
$(NAME): libft.h ft_*.c
    $(CC) $(NAME) 

.PHONY: clean fclean

clean:
    rm -rf $(NAME).dSYM

fclean:
	rm -rf $(NAME)
