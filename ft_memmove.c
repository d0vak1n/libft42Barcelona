/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ramoreno <ramoreno@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/18 13:00:06 by ramoreno          #+#    #+#             */
/*   Updated: 2024/01/18 13:00:11 by ramoreno         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "libft.h"
#include <string.h>
#include <stdio.h>

void	*ft_memmove(void *dst, const void *src, size_t len)
{
	size_t	i;
	char	*d;
	char	*s;
	char	tmp[len];

	d = (char *)dst;
	s = (char *)src;
	i = 0;

	if (!d && !s)
		return (NULL);
	if (d > s)
	{
		while(len > 0)
		{
			len--;
			d[len] = s[len];
		}
	}
	else
	{
		while (i < len)
		{
			d[i] = tmp[i];
			i++;
		}
	}
	return (dst);
}
/*
int main()
{
char str1[50] = "Hola que tal";

printf("Before ft_memmove(): \n%s\n\n", str1);

ft_memmove(str1 + 2, str1, 5);

printf("After ft_memmove():  \n%s\n\n", str1);

return 0;
}
*/
