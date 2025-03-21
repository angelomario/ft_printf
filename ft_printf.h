/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aquissan <aquissan@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/24 17:25:46 by aquissan          #+#    #+#             */
/*   Updated: 2025/03/17 18:03:48 by aquissan         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h>
# include <unistd.h>
# include <stdlib.h>

int		ft_printf(const char *str, ...);
int		ft_putnbr(int nb);
int		ft_putchar(char ch);
int		ft_putstr(char *str);
int		ft_putunsign(unsigned int n);
int		ft_putptr(unsigned long long ptr);
int		ft_puthex(unsigned int num, const char format);
char	*ft_itoa(int n);

#endif
