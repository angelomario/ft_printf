# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aquissan <aquissan@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/25 14:20:56 by aquissan          #+#    #+#              #
#    Updated: 2025/03/17 18:01:25 by aquissan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_itoa.c ft_putstr.c ft_utils.c ft_putptr.c \
	ft_hexa.c ft_printf.c ft_putnbr.c ft_putunsign.c 
NAME =libftprintf.a
OBJ = $(SRC:.c=.o)
CFLAGS = -Wall -Wextra -Werror
CC = cc
AR = ar -rcs
RM = rm -f
BOBJ = bonus.o
BSRC = bonus.c

all: $(NAME)

$(NAME): $(OBJ)
	@$(AR) $(NAME) $(OBJ)
	@echo "$@ generated successfully!"
%.o:%.c
	@$(CC) $(CFLAGS) -c $< -o $@
	@echo "Object generated"

clean:
	@$(RM) $(OBJ)
	@$(RM) $(BOBJ)
	@echo "All objects was removed"
bonus: $(BOBJ) all
	@$(AR) $(NAME) $(BOBJ)
$(BOBJ) : $(BSRC)
	$(CC) $(CFLAGS) -c $< -o $@
fclean: clean
	@$(RM) $(NAME)
	@echo "$(NAME) was removed"
re: fclean all


.PHONY: all re clean fclean
