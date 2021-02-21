# Práctica de Planificación

## Índice
- [Generador de juegos de prueba](#generador-de-juegos-de-prueba)
- [Ejecución de Fast Forward](#ejecución-de-fast-forward)

## Generador de juegos de prueba
Se ha implementado un generador de juegos de prueba para las extensiones 3 y 4 en lenguaje ```c++```.

Para su correcta ejecución seguir los siguientes pasos.

Compilar el código con:
```shell
$ make
```

Generar los juegos de prueba con:
```shell
$ ./generador.bin
```
o en caso de Windows:
```shell
$ generador.bin
```

El resultado será un archivo de extensión ```pddl``` que contendrá el problema para ser ejecutado con Fast Forward.

## Ejecución de Fast Forward
Ejecutar los juegos de prueba con:
```shell
$ ./ff -o "archivo-del-dominio.pddl" -f "archivo-del-problema.pddl"
```
o bien en Windows:
```shell
$ ff.exe -o "archivo-del-dominio.pddl" -f "archivo-del-problema.pddl"
```