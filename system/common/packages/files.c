#include <stdio.h>
#include <fcntl.h>

int main() {
    int fd = open("./asdf", O_RDONLY);
    if (fd == -1) {
        perror("open");
    }
}
#include <fcntl.h>

