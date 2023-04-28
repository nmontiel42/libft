NAME = libft.a
FILES = ft_toupper.c\
		ft_tolower.c\
		ft_strrchr.c\
		ft_strnstr.c\
		ft_strncmp.c\
		ft_strlen.c\
		ft_strlcpy.c\
		ft_strlcat.c\
		ft_strdup.c\
		ft_strchr.c\
		ft_memset.c\
		ft_memmove.c\
		ft_memcpy.c\
		ft_memcmp.c\
		ft_memchr.c\
		ft_isprint.c\
		ft_isdigit.c\
		ft_isascii.c\
		ft_isalpha.c\
		ft_isalnum.c\
		ft_calloc.c\
		ft_bzero.c\
		ft_atoi.c\
		ft_substr.c\
		ft_strjoin.c\
		ft_strtrim.c\
		ft_itoa.c\
		ft_strmapi.c\
		ft_striteri.c\
		ft_putchar_fd.c\
		ft_putstr_fd.c\
		ft_putendl_fd.c\
		ft_putnbr_fd.c\
		ft_split.c
BONUS = ft_lstnew.c\
		ft_lstadd_front.c\
		ft_lstsize.c\
		ft_lstlast.c

OBJECTS = $(FILES:.c=.o)

OBJECTS_BONUS = $(BONUS:.c=.o)

FLAGS = -Wall -Wextra -Werror

CC = gcc

LIB = ar rcs

all: $(NAME)

$(NAME) : $(OBJECTS)
		$(LIB) $(NAME) $(OBJECTS)

$(OBJECTS) : $(FILES)
			$(CC) $(FLAGS) -c $(FILES)
clean:
		rm -f $(OBJECTS)

fclean: clean
		rm -f $(NAME)

re: fclean all

bonus: $(OBJECTS_BONUS) $(OBJECTS)
		$(LIB) $(NAME) $(OBJECTS) $(OBJECTS_BONUS)

.PHONY: re all clean fclean bonus