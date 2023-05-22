import numpy as np

def crear_matriz():
    filas = np.random.randint(2, 6)
    columnas = np.random.randint(2, 6)
    matriz = []
    for _ in range(filas):
        fila = []
        for _ in range(columnas):
            elemento = int(input("Ingrese un elemento para la matriz: "))
            fila.append(elemento)
        matriz.append(fila)
    return matriz

# Crear las dos matrices aleatorias

print("Ingrese los elementos para la primera matriz:")
matriz1 = crear_matriz()

print("Ingrese los elementos para la segunda matriz:")
matriz2 = crear_matriz()

# Resta de las dos matrices

resultado_resta = []
for i in range(len(matriz1)):
    fila = []
    for j in range(len(matriz1[0])):
        elemento = matriz1[i][j] - matriz2[i][j]
        fila.append(elemento)
    resultado_resta.append(fila)

