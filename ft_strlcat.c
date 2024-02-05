/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ramoreno <ramoreno@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/30 12:52:53 by ramoreno          #+#    #+#             */
/*   Updated: 2024/01/30 13:22:57 by ramoreno         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "libft.h"

size_t	sizecontrol(size_t srcsize, size_t varsize, size_t dstsize)
{
	size_t	totalsize;

	if (dstsize < varsize)
		return (totalsize = srcsize + dstsize);
	else
		return (totalsize = srcsize + varsize);
}

size_t	ft_strlcat(char *dst, const char *src, size_t dstsize)
{
	size_t	i;
	size_t	j;
	size_t	srcsize;
	size_t	varsize;
	size_t	totalsize;

	j = 0;
	srcsize = ft_strlen(src);
	varsize = ft_strlen(dst);
	totalsize = sizecontrol(srcsize, varsize, dstsize);
	if (dstsize == 0)
		return (totalsize);
	i = varsize;
	while (i < dstsize - 1 && dstsize - 1 > varsize)
	{
		dst[i] = src[j];
		i++;
		j++;
	}
	dst[i] = '\0';
	return (totalsize);
}
