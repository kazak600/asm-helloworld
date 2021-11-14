### Compile
```
nasm -f elf32 -o hello_world.o hello_world.asm
```
### Link
```
ld -m elf_i386 -o hello_world hello_world.o
```
### Run
```
./hello_world
```