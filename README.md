# CHIP8
CHIP8 is a virtual machine for 8-bit computers developed in the 1970s. It is an interpreted language that was intended for game development

## Requirements 
Make sure you have SDL2 library installed

## How to run
Choose a game inside the bin/ROMS folder and run: 
```
make run GAME=<GAME>
```
For example, to run tetris:
```
make run GAME=TETRIS
```
## Observations
The delay time is not so well defined, so you might need to change the [value of the delay](https://github.com/fullplastic-alchemist/CHIP8/blob/8f686f96f46d64c1e5c9f5e28ba9bab8f0fd646d/src/main.c#L119) to run some ROMS in a better speed. For the current value, some games might run too fast or too slow. 

This is a study project and a work in progress :)
## References 
- [CHIP8 - Wikipedia](https://en.wikipedia.org/wiki/CHIP-8)
- [CHIP8 - Technical Reference](http://devernay.free.fr/hacks/chip8/C8TECH10.HTM)
