#include "libft.h"

t_list  *ft_lstnew(void *content)
{
    t_list  *newls;

    newls = malloc(sizeof(t_list));
    if (!newls)
        return (NULL);
    newls->content = content;
    newls->next = NULL;
    return (newls);
}
