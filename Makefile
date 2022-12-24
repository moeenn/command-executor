PROJECT = command-executor

CC = clang++
SRC_DIR=./src
SRC = ${SRC_DIR}/main.cpp
OBJ = ${SRC:.cpp=.o}
LIBS = -lm
CFLAGS = -Wextra -Werror -Wall -std=c++17 -Wc++17-extensions
BINARY = bin/${PROJECT}

main: ${OBJ}
	${CC} -o ${BINARY} ${SRC_DIR}/*.o ${LIBS}

.c.o:
	${CC} -c ${CFLAGS} $<

clean:
	@echo "Cleaning Executables ..."
	@rm ${SRC_DIR}/*.o
	rm ${BINARY}
