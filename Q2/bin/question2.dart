import 'dart:io';
import 'dart:math';

void main() {
  int N = 0;
  int amount = Random().nextInt(60) + 90; // número random de random números
  List list = []; // lista dos números todos
  List odd = []; // lista dos números impares
  for (int i = 0; i < amount; i++) {
    //para cada lugar na lista criar um número random
    list.add(Random().nextInt(4294967296) + 1);
  }

  do {
    menu();
    N = int.parse(stdin.readLineSync()!); // ler o número escrito
    print("\n");
    //case
    switch (N) {
      case 1: //Maior e Menor
        int largest = // número maior
            list.reduce(
          (current, next) => current > next ? current : next,
        );
        int smallest = // número menos
            list.reduce(
          (current, next) => current < next ? current : next,
        );

        print('Highest: $largest'); // maior
        print('Lowest : $smallest'); // menor
        break;

      case 2: // Tamanho / Quantidade
        print("There are ${list.length} numbers created.");
        break;

      case 3: // Impares decrescentes

        // list.forEach(            forEach aprendido na pergunta 3
        //   (e) {
        //     if (e.isOdd) {
        //       // verificar se for impar
        //       odd.add(e); // adicionar se for
        //     }
        //   },
        // );

        for (int j in list) {
          // correr a lista
          if (j.isOdd) {
            // verificar se for impar
            odd.add(j); // adicionar se for
          }
        }
        odd.sort((b, a) => a.compareTo(b)); // organizar por decrescente

        // odd.forEach((e) => print(e)); forEach aprendido na pergunta 3

        for (int i in odd) {
          print(i);
        }
        break;
      case 4: // ver tudo
        // list.forEach((e) => print(e)); utilização de um .forEach
        //                                    aprendido apenas na pergunta 3
        for (int i in list) {
          print(i);
        }
        break;

      case 5:
        print('                  Have a Good Day!'); //mensagem de fecho
        break;

      default: //dizer para tentar novamente se for errado a escolha
        print("Invalid option! Try again.");
    }
  } while (N != 5); //enquanto o digitado não for 5 ele não para!
}

void menu() {
  //menu
  print('\n');
  print('                  Menu');
  print('');
  print('1- Tell me the Highest and Lowest number.');
  print('2- Length.');
  print('3- Odds in descending order.');
  print('4- See all.');
  print('5- Exit.');
  print('\n');
}
