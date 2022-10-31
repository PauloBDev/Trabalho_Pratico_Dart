import 'dart:developer';
import 'dart:io';

import 'package:trabalho1/question3lib.dart';

void main() {
  int N = 0;

  seguradora primseguradora = seguradora();
  primseguradora.nomeseguradora = "primseguradora";
  primseguradora.muradaseguradora = "murada da primseguradora";
  primseguradora.ano = 2022;

  seguradora segseguradora = seguradora();
  segseguradora.nomeseguradora = "segseguradora";
  segseguradora.muradaseguradora = "murada da segseguradora";
  segseguradora.ano = 2021;

  Apolices primapolice = Apolices();
  primapolice.nomeapolice = "primapolice";
  primapolice.tipo = 1;
  primapolice.activa = 1;

  Apolices segapolice = Apolices();
  segapolice.nomeapolice = "segapolice";
  segapolice.tipo = 2;
  segapolice.activa = 0;

  do {
    //pushar o menu
    menu();
    //ler o numero escolhido
    N = int.parse(stdin.readLineSync()!); // ler o número escrito
    print("\n");
    //case
    switch (N) {
      //numero de apolices ativas
      case 1:
        inspect(seguradora());
        segapolice.displayapolice();
        break;

      //numero de apolices e valor medio por seguradora
      case 2:
        break;

      //numero de apolices e valor medio por seguro
      case 3:
        break;

      // relatório de apolices ativas por
      // tipo de seguro e seguradora
      // valor de cada premio
      case 4:
        break;

      //analise dos premios anuais das seguradoras
      case 5:
        break;

      //somatório dos premios das apolices
      case 6:
        break;

      //quem tem a apolices, nome, idade, murada
      case 7:
        break;

      //exit
      case 8:
        print('                  Have a Good Day!');
        print("\n");
        break;
      //escolha errada
      default:
        print('Invalid choise! Please try again.');
        break;
    }
    //parar se for escolhido 8
  } while (N != 8);
}

void menu() {
  //menu
  print("\n");
  print('1. Active and Innactive policies.');
  print('2. Average price of active poilicies by insurance.');
  print('3. Average price of active policies by type of insurance');
  print('4. Each value of policies for each insurance and type of.');
  print('5. Analise of anual awards of insurance.');
  print('6. Sum of each policies awards.');
  print('7. Entity of each active policies, age and address.');
  print('8. Exit.');
  print("\n");
}
