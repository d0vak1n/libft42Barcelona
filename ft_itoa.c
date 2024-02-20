/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ramoreno <ramoreno@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/02/20 11:32:45 by ramoreno          #+#    #+#             */
/*   Updated: 2024/02/20 11:33:34 by ramoreno         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "libft.h"

static int	numdigits(int n)
{
	int counter;

	counter = 1;
	if (n < 0)
	{
		n = -n;
		counter++;
	}
	while (n > 9)
	{
		n = n / 10;
		counter++;
	}
	return (counter);
}

static char *numtostr(int n)
{
	char	*s;
	size_t	dnum;

	if (n > 10)
	{
		dnum = n % 10;
		n = nb / 10;
		numtostr(n);
	}
	else if (n < 0)
	{

	}
	else
		dnum = n;
	
}

char *ft_itoa(int n)
{
	int		dnum;
	char	*str;

	if (!n)
		return (NULL);
	//if (n == INT_MIN)
	if (!(str = (char *)malloc((numdigits(n) + 1) * sizeof(char))))
		return (NULL);
	ft_strlcpy(str, numtostr(n), numdigits(n));
}
