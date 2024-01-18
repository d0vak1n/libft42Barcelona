#include "libft.h"

void *ft_memset(void *s, int c, size_t n)
{
	size_t	i;
	char	*reserva;

	i = 0;
	reserva = (char *)s;
	while (i < n)
	{
		*reserva = c;
		i++;
		reserva++;
	}
	return (s);
}
