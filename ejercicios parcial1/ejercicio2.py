import numpy as np

#Generar tres matrices aleatorias

#La primera matriz de números 1 al 10

matriz1 = np.random.randint(1, 11, size=(3, 3))

#La segunda matriz de números del 11 al 30

matriz2 = np.random.randint(11, 31, size=(3, 3))

#La tercera matriz de números del -1 al -10

matriz3 = np.random.randint(-10, 0, size=(3, 3))

# Calcular el resultado de (A+B)·C

resultado1 = (matriz1 + matriz2) * matriz3

# Calcular el resultado de A·C + B·C

resultado2 = matriz1 * matriz3 + matriz2 * matriz3

# Comprobar la propiedad (A+B)·C = A·C + B·C

if np.array_equal(resultado1, resultado2):
    print("La propiedad se cumple: (A+B)·C = A·C + B·C")
else:
    print("La propiedad no se cumple: (A+B)·C != A·C + B·C")

#Imprimir las matrices y los resultados respectivamente

print("Matriz 1:")
print(matriz1)
print("Matriz 2:")
print(matriz2)
print("Matriz 3:")
print(matriz3)
print("Resultado de (A+B)·C:")
print(resultado1)
print("Resultado de A·C + B·C:")
print(resultado2)
