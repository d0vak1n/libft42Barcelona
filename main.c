#include "libft.h"
#include <string.h>

void *ft_memset(void *s, int c, size_t n);
int main ()
{
char str[50] = "GeeksForGeeks is for programming geeks.";
    printf("\nBefore memset(): %s\n", str);

    // Fill 8 characters starting from str[13] with '.'
    char *holi = memset(str + 13, '.', 8*sizeof(char));

    printf("After memset():  %s\n", holi);

        // Fill 8 characters starting from str[13] with '.'
    char *holis = ft_memset(str + 13, '.', 8*sizeof(char));

    printf("After mymset():  %s", holi);
    return 0;
}
