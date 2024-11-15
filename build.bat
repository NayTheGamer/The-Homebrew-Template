@echo off

asm68k /k /p /o ae- Homebrew.asm, Homebrew.bin >errors.txt, , Homebrew.lst
fixheadr.exe Homebrew.bin