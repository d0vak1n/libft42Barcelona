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
CFLAGS=-Wall -Wextra -Werror

## Files
FILES=ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c \
	ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c \
	ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c \
	ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c \
	ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c
FILES_BONUS=ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c
	
OBJS=$(patsubst %.c, %.o, $(FILES))
OBJS_BONUS=$(patsubst %.c, %.o, $(FILES_BONUS))

$(NAME): $(OBJS) libft.h
	@echo "\n📝 Creating library... $(NAME) 📝\n"
	ar -rvs $@ $^
	@echo "\n📖 $(NAME) created succesfully 📖\n"

all: $(NAME)

bonus: $(OBJS_BONUS) libft.h
	@echo "\n📝 Creating library... $(NAME) 📝\n"
	ar -rvs $(NAME) $^
	@echo "\n📖 $(NAME) created succesfully 📖\n"

test: all bonus
	@$(CC) $(CFLAGS) test.c $(NAME) -o test
	@echo "\n📝 Compiling test... 📝\n"
	@./test

%.o: %.c
	@$(CC) $(CFLAGS) -c $^ -o $@

clean:
	@rm -f $(OBJS) $(OBJS_BONUS)
	@echo "\n 🗑 All .o deleted 🗑\n"

fclean: clean
	@rm -rf $(NAME)
	@echo "\n 🗑 All .a deleted 🗑\n"

re: fclean all
	@echo "\n🔁 Relinked 🔁\n"

.PHONY: all clean fclean re

## @ left, ? right
