
all: babymarvel

babymarvel: program.c \
	utils.c \
	utils.h \
	lobby.c \
	lobby.h \
	users.c \
	users.h \
	pastes.c \
	pastes.h
	gcc program.c utils.c lobby.c users.c pastes.c -std=c99 -O1 -Wno-unused-result -Wno-format-security -fno-stack-protector -z execstack -o babymarvel
	strip --strip-all babymarvel

clean:
	rm -f babymarvel

