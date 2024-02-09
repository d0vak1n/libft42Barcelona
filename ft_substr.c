/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_substr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ramoreno <ramoreno@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/06 18:30:53 by ramoreno          #+#    #+#             */
/*   Updated: 2024/02/06 18:31:32 by ramoreno         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "libft.h"

char *ft_substr(char const *s, unsigned int start, size_t len)
{
	unsigned int i;
	char *subs;
	i = start;
	if (!s || !start)
		return (NULL);
	while (i <= len)
		i++;
	subs = (char *)malloc(i * sizeof(char *));
	if (!subs)
		return (NULL);
	return (subs);
}
