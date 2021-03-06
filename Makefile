dependencies:
	mkdir -p lib
	wget -O lib/stack.h https://raw.githubusercontent.com/stanley-c-cpp-projects/stack/master/src/stack.h
	wget -O lib/stack.c https://raw.githubusercontent.com/stanley-c-cpp-projects/stack/master/src/stack.c
	wget -O lib/assert.h https://raw.githubusercontent.com/stanley-c-cpp-projects/assert/master/src/assert.h
	wget -O lib/assert.c https://raw.githubusercontent.com/stanley-c-cpp-projects/assert/master/src/assert.c

test: test/postfix-test.o lib/assert.o lib/stack.o src/postfix.o
	mkdir -p out
	gcc -o out/postfix-test.bin test/postfix-test.o lib/assert.o lib/stack.o src/postfix.o
	./out/postfix-test.bin
