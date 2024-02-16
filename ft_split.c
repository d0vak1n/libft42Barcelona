/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ramoreno <ramoreno@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/15 13:24:38 by ramoreno          #+#    #+#             */
/*   Updated: 2024/02/15 13:25:32 by ramoreno         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "libft.h"
#include <stdio.h>

static

static int	_countwords(char const *str, char c)
{
	int		counter;

	counter = 0;
	while (*str)
	{
		if (*str != c)
		{
			counter++;
			while (*str != c && *str) //palabra
				str++;
		}
		if (*str == c && *str)
			while (*str == c && *str) // no palabra
				str++;
	}
	return (counter);
}

char	**ft_split(char const *s, char c)
{
	int i;
	int j;
	char **res;

	i = 0;
	if (!s)
		return (NULL);
	res = malloc((_countwords(s, c) + 1) * sizeof(char *));
	if (!res)
		return (NULL);


	
}