import 'dart:io';
import 'package:trabalho1/seguradoras.dart';
import 'package:trabalho1/apolices.dart';
import 'package:trabalho1/tomadores.dart';
import 'package:trabalho1/tiposeguros.dart';
import 'package:trabalho1/segurados.dart';

void main() {
  int N = 0;
  List seguradoras = [
    Seguradora(
      nomeseguradora: 'A',
      muradaseguradora: "Seguradora A murada",
      ano: 1990,
    ),
    Seguradora(
      nomeseguradora: "B",
      muradaseguradora: "Seguradora B murada",
      ano: 1990,
    )
  ];

  List apolices = [
    Apolices(
      nomeseguradora: 'A',
      nomeapolice: "A",
      tipo: "10",
      valorpremio: 100,
      duracao: 1,
      active: false,
    ),
    Apolices(
      nomeseguradora: 'A',
      nomeapolice: "B",
      tipo: "20",
      valorpremio: 101,
      duracao: 2,
      active: true,
    ),
    Apolices(
      nomeseguradora: 'B',
      nomeapolice: "C",
      tipo: "30",
      valorpremio: 102,
      duracao: 3,
      active: true,
    ),
    Apolices(
      nomeseguradora: 'A',
      nomeapolice: "D",
      tipo: "40",
      valorpremio: 103,
      duracao: 4,
      active: true,
    ),
    Apolices(
      nomeseguradora: 'A',
      nomeapolice: "E",
      tipo: "50",
      valorpremio: 104,
      duracao: 5,
      active: true,
    ),
    Apolices(
      nomeseguradora: 'B',
      nomeapolice: "F",
      tipo: "60",
      valorpremio: 105,
      duracao: 6,
      active: false,
    )
  ];

  List tomadores = [
    Tomador(
      nomeseguradora: 'A',
      nomeapolice: 'B',
      valorpremio: 1000,
      active: false,
      nometomador: 'Tomador A',
      muradatomador: 'Murada Tomador A',
      idade: 1,
    ),
    Tomador(
      nomeseguradora: 'A',
      nomeapolice: 'B',
      valorpremio: 2000,
      active: true,
      nometomador: 'Tomador B',
      muradatomador: 'Murada Tomador B',
      idade: 2,
    ),
    Tomador(
      nomeseguradora: 'A',
      nomeapolice: 'C',
      valorpremio: 3000,
      active: true,
      nometomador: 'Tomador C',
      muradatomador: 'Murada Tomador C',
      idade: 3,
    ),
    Tomador(
      nomeseguradora: 'B',
      nomeapolice: 'D',
      valorpremio: 4000,
      active: true,
      nometomador: 'Tomador D',
      muradatomador: 'Murada Tomador D',
      idade: 4,
    ),
    Tomador(
      nomeseguradora: 'B',
      nomeapolice: 'E',
      valorpremio: 5000,
      active: true,
      nometomador: 'Tomador E',
      muradatomador: 'Murada Tomador E',
      idade: 5,
    ),
    Tomador(
      nomeseguradora: 'B',
      nomeapolice: 'F',
      valorpremio: 3000,
      active: true,
      nometomador: 'Tomador F',
      muradatomador: 'Murada Tomador F',
      idade: 20,
    )
  ];

  List tiposeguros = [
    TipoDeSeguro(
      nomeseguradora: 'A',
      nomeapolice: 'A',
      nomeseguro: 'A',
      active: true,
      tiposeguro: 1,
      preco: 10000,
      valoranual: 10,
    ),
    TipoDeSeguro(
      nomeseguradora: 'A',
      nomeapolice: 'B',
      nomeseguro: 'B',
      active: true,
      tiposeguro: 2,
      preco: 20000,
      valoranual: 20,
    ),
    TipoDeSeguro(
      nomeseguradora: 'A',
      nomeapolice: 'C',
      nomeseguro: 'C',
      active: true,
      tiposeguro: 3,
      preco: 30000,
      valoranual: 30,
    ),
    TipoDeSeguro(
      nomeseguradora: 'B',
      nomeapolice: 'D',
      nomeseguro: 'D',
      active: true,
      tiposeguro: 4,
      preco: 40000,
      valoranual: 40,
    ),
    TipoDeSeguro(
      nomeseguradora: 'B',
      nomeapolice: 'E',
      nomeseguro: 'E',
      active: true,
      tiposeguro: 5,
      preco: 50000,
      valoranual: 50,
    ),
    TipoDeSeguro(
      nomeseguradora: 'B',
      nomeapolice: 'E',
      nomeseguro: 'E',
      active: true,
      tiposeguro: 6,
      preco: 60000,
      valoranual: 60,
    )
  ];

  List segurados = [
    Segurado(
      nometomador: 'A',
      nomesegurado: 'a',
      tiposegurado: 1,
    ),
    Segurado(
      nometomador: 'B',
      nomesegurado: 'b',
      tiposegurado: 2,
    ),
    Segurado(
      nometomador: 'C',
      nomesegurado: 'c',
      tiposegurado: 3,
    ),
    Segurado(
      nometomador: 'D',
      nomesegurado: 'd',
      tiposegurado: 4,
    ),
    Segurado(
      nometomador: 'E',
      nomesegurado: 'e',
      tiposegurado: 5,
    ),
    Segurado(
      nometomador: 'F',
      nomesegurado: 'f',
      tiposegurado: 6,
    )
  ];
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
        apolices.where((e) => e.active == true).forEach((e) => print(
              '''\n
      Apolice:
        Seguradora: ${e.nomeseguradora}
        Nome: ${e.nomeapolice}
        Tipo: ${e.tipo}
        Valor Prémio: ${e.valorpremio}
        Duração: ${e.duracao}(s)\n''',
            ));

        print("Inativas: ");
        apolices.where((e) => e.active == false).forEach((e) => print(
              '''\n
      Apolice:
        Seguradora: ${e.nomeseguradora}
        Nome: ${e.nomeapolice}
        Tipo: ${e.tipo}
        Valor Prémio: ${e.valorpremio}
        Duração: ${e.duracao}(s)\n''',
            ));
        break;

      //numero de apolices e valor medio por seguradora
      case 2:
        int counter = 0;
        int counter1 = 0;
        double sum = 0;
        double sum1 = 0;
        print('Numero de Apólices: ${apolices.length}');
        apolices
            .where((e) => e.nomeseguradora == 'A' && e.active == true)
            .forEach((e) => {
                  sum += e.valorpremio,
                  counter++,
                });

        sum = sum / counter;
        print('A seguradora A tem o valor médio de: $sum');
        apolices
            .where((e) => e.nomeseguradora == 'B' && e.active == true)
            .forEach((e) => {
                  sum1 += e.valorpremio,
                  counter1++,
                });
        sum1 = sum1 / counter1;
        print('A seguradora B tem o valor médio de: $sum1');
        break;

      //numero de apolices e valor medio por seguro
      case 3:
        double sum = 0;
        int counter = 0;
        tiposeguros.where((e) => e.active == true).forEach((e) => {
              sum += e.preco,
              counter++,
            });
        sum = sum / counter;
        print('O valor médio dos seguros é: $sum');
        break;

      // relatório de apolices ativas por
      // tipo de seguro e seguradora
      // valor de cada premio
      case 4:
        seguradoras.where((j) => j.nomeseguradora != null).forEach((j) => {
              print('A seguradora ${j.nomeseguradora} tem as apólices:'),
              apolices
                  .where((e) =>
                      e.nomeseguradora == 'A' &&
                      e.nomeseguradora == j.nomeseguradora &&
                      e.active == true)
                  .forEach((e) => print(
                        '''
      Nome: ${e.nomeapolice}
      Tipo: ${e.tipo}\n''',
                      )),
              apolices
                  .where((e) =>
                      e.nomeseguradora == 'B' &&
                      e.nomeseguradora == j.nomeseguradora &&
                      e.active == true)
                  .forEach((e) => print(
                        '''
      Nome: ${e.nomeapolice}
      Tipo: ${e.tipo}\n''',
                      )),
            });
        break;

      //analise dos premios anuais das seguradoras
      case 5:
        break;

      //somatório dos premios das apolices
      case 6:
        double sum = 0;
        apolices.where((e) => e.active == true).forEach((e) {
          sum += e.valorpremio;
        });
        print('O total valor dos prémios das apólices é: $sum€');
        break;

      //quem tem a apolices, nome, idade, murada
      case 7:
        apolices.where((j) => j.nomeapolice != null).forEach((j) => {
              print('A apolice ${j.nomeapolice} tem os tomadores:'),
              tomadores
                  .where((e) =>
                      e.nomeapolice == 'A' &&
                      e.nomeapolice == j.nomeapolice &&
                      e.active == true)
                  .forEach((e) => print(
                        '''
      Nome: ${e.nometomador}
      Murada: ${e.muradatomador}
      Idade: ${e.idade}\n''',
                      )),
              tomadores
                  .where((e) =>
                      e.nomeapolice == 'B' &&
                      e.nomeapolice == j.nomeapolice &&
                      e.active == true)
                  .forEach((e) => print(
                        '''
      Nome: ${e.nometomador}
      Murada: ${e.muradatomador}
      Idade: ${e.idade}\n''',
                      )),
              tomadores
                  .where((e) =>
                      e.nomeapolice == 'C' &&
                      e.nomeapolice == j.nomeapolice &&
                      e.active == true)
                  .forEach((e) => print(
                        '''
      Nome: ${e.nometomador}
      Murada: ${e.muradatomador}
      Idade: ${e.idade}\n''',
                      )),
              tomadores
                  .where((e) =>
                      e.nomeapolice == 'D' &&
                      e.nomeapolice == j.nomeapolice &&
                      e.active == true)
                  .forEach((e) => print(
                        '''
      Nome: ${e.nometomador}
      Murada: ${e.muradatomador}
      Idade: ${e.idade}\n''',
                      )),
              tomadores
                  .where((e) =>
                      e.nomeapolice == 'E' &&
                      e.nomeapolice == j.nomeapolice &&
                      e.active == true)
                  .forEach((e) => print(
                        '''
      Nome: ${e.nometomador}
      Murada: ${e.muradatomador}
      Idade: ${e.idade}\n''',
                      )),
              tomadores
                  .where((e) =>
                      e.nomeapolice == 'F' &&
                      e.nomeapolice == j.nomeapolice &&
                      e.active == true)
                  .forEach((e) => print(
                        '''
      Nome: ${e.nometomador}
      Murada: ${e.muradatomador}
      Idade: ${e.idade}\n''',
                      )),
            });
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
  print('-------------------Surprises EXIST!----------------------- ');
  print('\n1. Active and Innactive policies.');
  print('2. Average price of active poilicies by insurance.');
  print('3. Average price of active policies by type of insurance');
  print('4. Each value of policies for each insurance and type of.');
  print('5. Analise of anual awards of insurance.');
  print('6. Sum of each policies awards.');
  print('7. Entity of each active policies, age and address.');
  print('8. Exit.\n');
}
