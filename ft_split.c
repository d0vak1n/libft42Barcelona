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

static int _countwords(char const *str, char c)
{
	int	counter;

	counter = 0;
	while (*str)
		if (*str == c || *str == '\0')
			counter++;
	return (counter);
}

char	**ft_split(char const *s, char c)
{
	int i;
	char **res;

	i = 0;
	if (!s)
		return (NULL);
	printf("%s", _countwords("hola que tal", " "));

}