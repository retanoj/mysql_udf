install:
	gcc -Wall -I/usr/include/mysql -I. -shared -fPIC lib_mysqludf_sys.c -o ./lib_mysqludf_sys.so
