import numpy as np

#Generar de forma aleatoria las matrices A, B y C , con elementos del 0 al 10

A = np.random.randint(0, 11, (4, 4))
B = np.random.randint(0, 11, (4, 4))
C = np.random.randint(0, 11, (4, 4))

#calcular el resultado de la matriz

resultado = np.dot(np.dot(A, B**-1), C) + np.linalg.inv(A)

print(resultado)