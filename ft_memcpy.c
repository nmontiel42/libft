/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nmontiel <montielarce9@gmail.com>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/17 17:53:25 by nmontiel          #+#    #+#             */
/*   Updated: 2023/04/21 16:17:05 by nmontiel         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>

void	*ft_memcpy(void *dst, const void *src, size_t n)
{
	size_t		i;
	char		*ptr_dst;
	const char	*ptr_src;

	i = 0;
	ptr_dst = (char *)dst;
	ptr_src = (const char *)src;
	if (!dst && !src)
		return (0);
	while (i < n)
	{
		ptr_dst[i] = (const char)ptr_src[i];
		i++;
	}
	return (dst);
}
