@echo off

lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -c -o build\main.o src\level1\main.c

lcc -Wa-l -Wl-m -Wl-j -DUSE_SFR_FOR_REG -Wl-yp0x143=0x80 -Wl-yt1 -Wl-yo4 -Wl-ya0 -o build\blind.gb build\main.o

del build\*.o build\*.lst build\*.sym build\*.map