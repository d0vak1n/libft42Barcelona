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
FILES=ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c \
	ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c \
	ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c \
	ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c
OBJS=$(patsubst %.c, %.o, $(FILES))

$(NAME): $(OBJS)
	@echo "\n📝 Creating library... $(NAME) 📝\n"
	@ar -rvs $@ $^
	@echo "\n📖 Created succesfully $(NAME) 📖\n"

all: $(NAME)

## TESTING:
test: $(OBJS)
	@echo "\n ❗️❗️ Compiling all the files... ❗️❗️ \n"
	@$(CC) $(CFLAGS) $@.c $? -o $@
	@make clean
	@echo "\n 🐁 Executing test... 🐁 \n"
	@./$@
## END TESTING

%.o: %.c
	@$(CC) $(CFLAGS) -c $^ -o $@


.PHONY: all clean fclean re

clean:
	@rm -f $(OBJS)
	@echo "\n 🗑 All .o deleted 🗑\n"

fclean: clean
	@rm -rf $(NAME)
	@echo "\n 🗑 All .a deleted 🗑\n"

re: fclean all
	@echo "\n🔁 Relinking... 🔁\n"

## @ Izquierda, ? derecha
