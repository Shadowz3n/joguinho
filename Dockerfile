FROM alpine:latest as builder
RUN apk add --update nasm binutils

WORKDIR /app
COPY . .
RUN nasm -f elf main.asm && ld -m elf_i386 main.o -o joguinho

FROM alpine:2.6
COPY --from=builder /app/joguinho /usr/bin/joguinho
CMD ["joguinho"]