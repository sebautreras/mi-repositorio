import 'dart:math';
import 'dart:io';

void main() {
//primera lista

  List<int> lista1 = [14, 2, 5, 3, 9];

//segunda lista o lista b debe tener numeros enteros

  List<int> lista2 = [];
  print("Ingrese 5 elementos enteros para la segunda lista:");
  for (int i = 0; i < 5; i++) {
    int elemento = int.parse(stdin.readLineSync()!);
    lista2.add(elemento);
  }

/*tercera lista debe contener 5 elementos generados de forma aleatoria 
solo numeros negativos del -15 al -25*/

  List<int> lista3 = [];
  Random random = Random();
  for (int i = 0; i < 5; i++) {
    int numeroAleatorio = random.nextInt(11) - 15;
    lista3.add(numeroAleatorio);
  }

  List<int> resultado = [];
  for (int i = 0; i < lista1.length; i++) {
    int resta = lista1[i] - lista2[i];
    resultado.add(resta);
  }
  for (int i = 0; i < resultado.length; i++) {
    resultado[i] += lista3[i];
  }

  resultado.insert(0, 17);
  resultado.insert(1, 24);

  resultado.sort((a, b) => b < a ? -1 : 1);

  print("Resultado final: $resultado");
}
