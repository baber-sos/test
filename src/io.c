#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

int main(int argc, char* argv[]) {
	if (strcmp(argv[1], "r") == 0){
		int fd = open("README.txt", O_RDONLY);
		close(fd);
	}else if (strcmp(argv[1], "w") == 0){
		int fd = open("README.txt", O_WRONLY);
		close(fd);
	}else if (strcmp(argv[1], "rp") == 0){
		int fd = open("testpipe", O_RDONLY | O_NONBLOCK);
		close(fd);
	}else if (strcmp(argv[1], "wp") == 0){
		int fd = open("testpipe", O_WRONLY | O_NONBLOCK);
		close(fd);
	}
}