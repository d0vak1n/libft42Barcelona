/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ramoreno <ramoreno@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/01 16:39:50 by ramoreno          #+#    #+#             */
/*   Updated: 2024/02/01 16:42:15 by ramoreno         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "libft.h"

char	*getlastpos(char *s)
{
	while (*s != '\0')
		s++;
	return (s - 1);
}

char	*ft_strrchr(const char *s, int c)
{
	char	*str;

	str = (char *)s;
	str = getlastpos(str);
	if (*str == '\0' && c == 0)
		return (str);
	while (*str != '\0')
	{
		if (*str == c)
			return (str);
		str--;
	}
	return (NULL);
}
