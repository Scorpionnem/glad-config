NAME = glad.a

SRCS = glad.cpp

OBJS = $(SRCS:.cpp=.o)

CXX = c++
CXXFLAGS = -Wall -Werror -Wextra

%.o : %.cpp
		@$(CXX) $(CXXFLAGS) -o $@ -c $< -I includes/glad

all: $(NAME)

$(NAME): $(OBJS)
		@ar rcs $(NAME) $(OBJS)

clean:
		@rm -f $(OBJS)

fclean: clean
		@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
