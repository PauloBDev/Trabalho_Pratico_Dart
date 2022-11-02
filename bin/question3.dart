import 'dart:developer';
import 'dart:io';

import 'package:trabalho1/question3lib.dart';

void main() {
  int N = 0;

  List<Apolices> apolices = [
    Apolices(
        nomeapolice: "A", tipo: "10", valorpremio: 100, duracao: 1, active: 1),
    Apolices(
        nomeapolice: "B", tipo: "10", valorpremio: 101, duracao: 2, active: 1),
    Apolices(
        nomeapolice: "C", tipo: "10", valorpremio: 102, duracao: 3, active: 1),
    Apolices(
        nomeapolice: "D", tipo: "10", valorpremio: 103, duracao: 4, active: 1),
    Apolices(
        nomeapolice: "E", tipo: "10", valorpremio: 104, duracao: 5, active: 1),
    Apolices(
        nomeapolice: "F", tipo: "10", valorpremio: 105, duracao: 6, active: 0)
  ];
  // seguradora primseguradora = seguradora();
  // primseguradora.nomeseguradora = "primseguradora";
  // primseguradora.muradaseguradora = "murada da primseguradora";
  // primseguradora.ano = 2022;

  // seguradora segseguradora = seguradora();
  // segseguradora.nomeseguradora = "segseguradora";
  // segseguradora.muradaseguradora = "murada da segseguradora";
  // segseguradora.ano = 2021;

  Apolices primapolice = Apolices();
  primapolice.nomeapolice = "primapolice";
  primapolice.tipo = "Apolice aberta";
  primapolice.valorpremio = 15670;
  primapolice.duracao = 10;
  primapolice.active = 1;

  Apolices segapolice = Apolices();
  segapolice.nomeapolice = "segapolice";
  segapolice.tipo = "Apolice fechada";
  segapolice.valorpremio = 12908;
  segapolice.duracao = 5;
  segapolice.active = 0;

  Apolices terapolice = Apolices();
  terapolice.nomeapolice = "terapolice";
  terapolice.tipo = "Apolice recibo";
  terapolice.valorpremio = 19009;
  terapolice.duracao = 2;
  terapolice.active = 1;

  do {
    //pushar o menu
    menu();
    //ler o numero escolhido
    N = int.parse(stdin.readLineSync()!); // ler o número escrito
    print("\n");
    //case
    switch (N) {
      //numero de apolices ativas e inativas
      case 1:
        print("Activas: ");
        apolices.asMap().forEach((key, value) {
          
         })
        for (int i = 0; i < apolices.length; i++) {
          if (apolices.contains(active) == 1)) {
            print('${apolices[i].toString()}\n');
          }
        }
        print("Inativas: ");
        for (int i = 0; i < apolices.length; i++) {
          if (apolices.any((active) => active == 0)) {
            print('${apolices[i].toString()}\n');
          }
        }
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
