ifeq ($(OS),Windows_NT)
	GEN = 'generador.bin'
else
	GEN = './generador.bin'
endif

all: generador generar

generador: generador.cpp
	g++ -o generador.bin generador.cpp

generar: generador.bin
	$(GEN)