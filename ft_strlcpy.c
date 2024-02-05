/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ramoreno <ramoreno@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/29 17:58:27 by ramoreno          #+#    #+#             */
/*   Updated: 2024/01/29 17:59:39 by ramoreno         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "libft.h"

size_t	ft_strlcpy(char *dst, const char *src, size_t dstsize)
{
	size_t	i;
	int		srcsize;

	i = 0;
	srcsize = 0;
	srcsize = ft_strlen(src);
	if (dstsize == 0)
		return (srcsize);
	i = 0;
	while (i < (dstsize - 1) && dst[i] != '\0' && src[i] != '\0')
	{
		dst[i] = src[i];
		i++;
	}
	dst[i] = '\0';
	return (srcsize);
}
/*
int main()
{
	char str1[50] = "mmmmmmmmmmmmmm";
	char str2[50] = "aaaa";

	printf("Antes de funcion:\n%s\n%s\n\n", str1, str2);

	size_t res = ft_strlcpy(str1, str2, 200);

	printf("strlcpy(str1, str2, 200);\n%s\n%s\nres: %lu\n", str1, str2, res);
}
*/
