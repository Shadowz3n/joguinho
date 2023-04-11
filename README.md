# Dependencies:

$ `sudo apt install nasm gcc`

nasm -felf64 main.asm && gcc main.o -z noexecstack -no-pie -o joguinho && rm main.o

Docker image: [shadowz3n/joguinho](https://hub.docker.com/r/shadowz3n/joguinho/tags)

Docker image size: `9.03KB`

Docker image compressed size: `775B`
