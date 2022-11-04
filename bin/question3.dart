import 'dart:io';
import 'package:trabalho1/question3lib.dart';

void main() {
  int N = 0;
  List seguradoras = [];
  seguradoras.add(Seguradora(
      nomeseguradora: 'A', muradaseguradora: "Seguradora A murada", ano: 1990));
  seguradoras.add(Seguradora(
      nomeseguradora: "B", muradaseguradora: "Seguradora B murada", ano: 1990));

  List apolices = [];
  apolices.add(Apolices(
      nomeseguradora: 'A',
      nomeapolice: "A",
      tipo: "10",
      valorpremio: 100,
      duracao: 1,
      active: 0));
  apolices.add(Apolices(
      nomeseguradora: 'A',
      nomeapolice: "B",
      tipo: "20",
      valorpremio: 101,
      duracao: 2,
      active: 1));
  apolices.add(Apolices(
      nomeseguradora: 'B',
      nomeapolice: "C",
      tipo: "30",
      valorpremio: 102,
      duracao: 3,
      active: 1));
  apolices.add(Apolices(
      nomeseguradora: 'A',
      nomeapolice: "D",
      tipo: "40",
      valorpremio: 103,
      duracao: 4,
      active: 1));
  apolices.add(Apolices(
      nomeseguradora: 'A',
      nomeapolice: "E",
      tipo: "50",
      valorpremio: 104,
      duracao: 5,
      active: 1));
  apolices.add(Apolices(
      nomeseguradora: 'B',
      nomeapolice: "F",
      tipo: "60",
      valorpremio: 105,
      duracao: 6,
      active: 0));

  List tomadores = [];
  tomadores.add(Tomador(
      nomeseguradora: 'A',
      nomeapolice: 'B',
      valorpremio: 1000,
      active: 0,
      nometomador: 'Tomador A',
      muradatomador: 'Murada Tomador A',
      idade: 1));
  tomadores.add(Tomador(
      nomeseguradora: 'A',
      nomeapolice: 'B',
      valorpremio: 2000,
      active: 1,
      nometomador: 'Tomador B',
      muradatomador: 'Murada Tomador B',
      idade: 2));
  tomadores.add(Tomador(
      nomeseguradora: 'A',
      nomeapolice: 'C',
      valorpremio: 3000,
      active: 1,
      nometomador: 'Tomador C',
      muradatomador: 'Murada Tomador C',
      idade: 3));
  tomadores.add(Tomador(
      nomeseguradora: 'B',
      nomeapolice: 'D',
      valorpremio: 4000,
      active: 1,
      nometomador: 'Tomador D',
      muradatomador: 'Murada Tomador D',
      idade: 4));
  tomadores.add(Tomador(
      nomeseguradora: 'B',
      nomeapolice: 'E',
      valorpremio: 5000,
      active: 1,
      nometomador: 'Tomador E',
      muradatomador: 'Murada Tomador E',
      idade: 5));
  tomadores.add(Tomador(
      nomeseguradora: 'B',
      nomeapolice: 'F',
      valorpremio: 3000,
      active: 1,
      nometomador: 'Tomador F',
      muradatomador: 'Murada Tomador F',
      idade: 20));

  List tiposeguros = [];
  tiposeguros.add(TipoDeSeguro(
    nomeseguradora: 'A',
    nomeapolice: 'A',
    nomeseguro: 'A',
    active: 1,
    tiposeguro: 1,
    preco: 10000,
    valoranual: 10,
  ));
  tiposeguros.add(TipoDeSeguro(
    nomeseguradora: 'A',
    nomeapolice: 'B',
    nomeseguro: 'B',
    active: 1,
    tiposeguro: 2,
    preco: 20000,
    valoranual: 20,
  ));
  tiposeguros.add(TipoDeSeguro(
    nomeseguradora: 'A',
    nomeapolice: 'C',
    nomeseguro: 'C',
    active: 1,
    tiposeguro: 3,
    preco: 30000,
    valoranual: 30,
  ));
  tiposeguros.add(TipoDeSeguro(
    nomeseguradora: 'B',
    nomeapolice: 'D',
    nomeseguro: 'D',
    active: 1,
    tiposeguro: 4,
    preco: 40000,
    valoranual: 40,
  ));
  tiposeguros.add(TipoDeSeguro(
    nomeseguradora: 'B',
    nomeapolice: 'E',
    nomeseguro: 'E',
    active: 1,
    tiposeguro: 5,
    preco: 50000,
    valoranual: 50,
  ));
  tiposeguros.add(TipoDeSeguro(
    nomeseguradora: 'B',
    nomeapolice: 'E',
    nomeseguro: 'E',
    active: 0,
    tiposeguro: 6,
    preco: 60000,
    valoranual: 60,
  ));

  List segurados = [];
  segurados.add(Segurado(
    nometomador: 'A',
    nomesegurado: 'a',
    tiposegurado: 1,
  ));
  segurados.add(Segurado(
    nometomador: 'B',
    nomesegurado: 'b',
    tiposegurado: 2,
  ));
  segurados.add(Segurado(
    nometomador: 'C',
    nomesegurado: 'c',
    tiposegurado: 3,
  ));
  segurados.add(Segurado(
    nometomador: 'D',
    nomesegurado: 'd',
    tiposegurado: 4,
  ));
  segurados.add(Segurado(
    nometomador: 'E',
    nomesegurado: 'e',
    tiposegurado: 5,
  ));
  segurados.add(Segurado(
    nometomador: 'F',
    nomesegurado: 'f',
    tiposegurado: 6,
  ));
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
        for (int i = 0; i < apolices.length; i++) {
          if (apolices[i].active == 1) {
            print('${apolices[i].toString()}\n');
          }
        }
        print("Inativas: ");
        for (int i = 0; i < apolices.length; i++) {
          if (apolices[i].active == 0) {
            print('${apolices[i].toString()}\n');
          }
        }
        break;

      //numero de apolices e valor medio por seguradora
      case 2:
        int counter = 0;
        double sum = 0;
        print('Numero de Apólices: ${apolices.length}');
        for (int i = 0; i < apolices.length; i++) {
          if (apolices[i].nomeseguradora == 'A') {
            sum += apolices[i].valorpremio;
            counter++;
          }
        }
        double A = sum / counter;
        for (int i = 0; i < apolices.length; i++) {
          if (apolices[i].nomeseguradora == 'B' && apolices[i].active == 1) {
            sum += apolices[i].valorpremio;
            counter++;
          }
        }
        double B = sum / counter;
        print('A seguradora A tem o valor médio de: $A');
        print('A seguradora B tem o valor médio de: $B');
        break;

      //numero de apolices e valor medio por seguro
      case 3:
        double sum = 0;
        int counter = 0;
        for (int i = 0; i < tiposeguros.length; i++) {
          if (apolices[i].active == 1) {
            sum += tiposeguros[i].preco;
            counter++;
          }
        }
        double total = sum / counter;
        print('O valor médio dos seguros é: $total€');
        break;

      // relatório de apolices ativas por
      // tipo de seguro e seguradora
      // valor de cada premio
      case 4:
        for (int j = 0; j < seguradoras.length; j++) {
          print(
              'A seguradora ${seguradoras[j].nomeseguradora} tem as apólices:');
          for (int i = 0; i < apolices.length; i++) {
            if (apolices[i].nomeseguradora == 'A' &&
                seguradoras[j].nomeseguradora == apolices[i].nomeseguradora &&
                apolices[i].active == 1) {
              print('''
            Nome: ${apolices[i].nomeapolice}
            Tipo: ${apolices[i].tipo}\n''');
            }
          }
          for (int i = 0; i < apolices.length; i++) {
            if (apolices[i].nomeseguradora == 'B' &&
                seguradoras[j].nomeseguradora == apolices[i].nomeseguradora &&
                apolices[i].active == 1) {
              print('''
            Nome: ${apolices[i].nomeapolice}
            Tipo: ${apolices[i].tipo}\n''');
            }
          }
        }
        break;

      //analise dos premios anuais das seguradoras
      case 5:
        break;

      //somatório dos premios das apolices
      case 6:
        double sum = 0;
        for (int i = 0; i < apolices.length; i++) {
          if (apolices[i].active == 1) {
            sum += apolices[i].valorpremio;
          }
        }
        print('O total valor dos prémios das apólices é: $sum€');
        break;

      //quem tem a apolices, nome, idade, murada
      case 7:
        for (int j = 0; j < apolices.length; j++) {
          print('A apolice ${apolices[j].nomeapolice} tem os tomadores:');
          for (int i = 0; i < tomadores.length; i++) {
            if (tomadores[i].nomeapolice == 'A' &&
                apolices[j].nomeapolice == tomadores[i].nomeapolice &&
                tomadores[i].active == 1) {
              print('''
          Nome: ${tomadores[i].nometomador}
            Murada: ${tomadores[i].muradatomador}
            Idade: ${tomadores[i].idade}\n''');
            }
          }
          for (int i = 0; i < tomadores.length; i++) {
            if (tomadores[i].nomeapolice == 'B' &&
                apolices[j].nomeapolice == tomadores[i].nomeapolice &&
                tomadores[i].active == 1) {
              print('''
            Nome: ${tomadores[i].nometomador}
            Murada: ${tomadores[i].muradatomador}
            Idade: ${tomadores[i].idade}\n''');
            }
          }
          for (int i = 0; i < tomadores.length; i++) {
            if (tomadores[i].nomeapolice == 'C' &&
                apolices[j].nomeapolice == tomadores[i].nomeapolice &&
                tomadores[i].active == 1) {
              print('''
            Nome: ${tomadores[i].nometomador}
            Murada: ${tomadores[i].muradatomador}
            Idade: ${tomadores[i].idade}\n''');
            }
          }
          for (int i = 0; i < tomadores.length; i++) {
            if (tomadores[i].nomeapolice == 'D' &&
                apolices[j].nomeapolice == tomadores[i].nomeapolice &&
                tomadores[i].active == 1) {
              print('''
            Nome: ${tomadores[i].nometomador}
            Murada: ${tomadores[i].muradatomador}
            Idade: ${tomadores[i].idade}\n''');
            }
          }
          for (int i = 0; i < tomadores.length; i++) {
            if (tomadores[i].nomeapolice == 'E' &&
                apolices[j].nomeapolice == tomadores[i].nomeapolice &&
                tomadores[i].active == 1) {
              print('''
            Nome: ${tomadores[i].nometomador}
            Murada: ${tomadores[i].muradatomador}
            Idade: ${tomadores[i].idade}\n''');
            }
          }
          for (int i = 0; i < tomadores.length; i++) {
            if (tomadores[i].nomeapolice == 'F' &&
                apolices[j].nomeapolice == tomadores[i].nomeapolice &&
                tomadores[i].active == 1) {
              print('''
            Nome: ${tomadores[i].nometomador}
            Murada: ${tomadores[i].muradatomador}
            Idade: ${tomadores[i].idade}\n''');
            }
          }
        }
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
  print('-------------------Surpresas Existem!----------------------- ');
  print('\n1. Active and Innactive policies.');
  print('2. Average price of active poilicies by insurance.');
  print('3. Average price of active policies by type of insurance');
  print('4. Each value of policies for each insurance and type of.');
  print('5. Analise of anual awards of insurance.');
  print('6. Sum of each policies awards.');
  print('7. Entity of each active policies, age and address.');
  print('8. Exit.\n');
}
