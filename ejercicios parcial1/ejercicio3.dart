import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();

/*La primera y segunda lista debe ser generada de forma aleatoria y tener
10 elementos. (Elementos entre el rango de 10 al 20)*/

  var primeralista = List.generate(10, (_) => random.nextInt(11) + 10);
  var segundalista = List.generate(10, (_) => random.nextInt(11) + 10);

/*La tercera matriz se debe ingresar por teclado (Debe tener 5 elementos
enteros)*/

  var tercerlista = List<int>(5);
  for (var i = 0; i < tercerlista.length; i++) {
    stdout.write('introducir elementos ${i + 1} de la tercerlista: ');
    tercerlista[i] = int.parse(stdin.readLineSync()!);
  }

//c) Concatenar todas las listas anteriores

  var list = [...primeralista, ...segundalista, ...tercerlista];

//d) Obtener el promedio de la lista obtenida

  var sum = 0;
  for (var element in list) {
    sum += element;
  }
  var promedio = sum / list.length;

//e) Ordenar la lista en orden ascendente

  list.sort();

//imprimir los resultados

  print('primeralista: $primeralista');
  print('segundalista: $segundalista');
  print('tercerlista: $tercerlista');
  print('lista concatenada: $list');
  print('promedio de la lista: $promedio');
  print('lista ordenada: $list');
}
