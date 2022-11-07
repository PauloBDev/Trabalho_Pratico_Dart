import 'dart:io';
import 'dart:math';
import 'package:trabalho1/seguradoras.dart';
import 'package:trabalho1/apolices.dart';
import 'package:trabalho1/tomadores.dart';
import 'package:trabalho1/tiposeguros.dart';
import 'package:trabalho1/segurados.dart';

void main() {
  int menuprincipal = 0;
  int detalhes = 0;
  int valoresanuais = 0;
  int analise = 0;
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

  List tiposeguros = [
    TipoDeSeguro(
      nomeseguradora: 'A',
      nomeseguro: 'A',
      tiposeguro: '1',
    ),
    TipoDeSeguro(
      nomeseguradora: 'A',
      nomeseguro: 'B',
      tiposeguro: '2',
    ),
    TipoDeSeguro(
      nomeseguradora: 'A',
      nomeseguro: 'C',
      tiposeguro: '3',
    ),
    TipoDeSeguro(
      nomeseguradora: 'B',
      nomeseguro: 'D',
      tiposeguro: '4',
    ),
    TipoDeSeguro(
      nomeseguradora: 'B',
      nomeseguro: 'E',
      tiposeguro: '5',
    ),
    TipoDeSeguro(
      nomeseguradora: 'B',
      nomeseguro: 'E',
      tiposeguro: '6',
    )
  ];

  List tomadores = [
    Tomador(
      nomeseguradora: 'A',
      nomeseguro: 'A',
      tiposeguro: '1',
      nometomador: 'Tomador A',
      muradatomador: 'Murada Tomador A',
      idadetomador: 1,
    ),
    Tomador(
      nomeseguradora: 'A',
      nomeseguro: 'B',
      tiposeguro: '2',
      nometomador: 'Tomador B',
      muradatomador: 'Murada Tomador B',
      idadetomador: 2,
    ),
    Tomador(
      nomeseguradora: 'A',
      nomeseguro: 'C',
      tiposeguro: '3',
      nometomador: 'Tomador C',
      muradatomador: 'Murada Tomador C',
      idadetomador: 3,
    ),
    Tomador(
      nomeseguradora: 'B',
      nomeseguro: 'D',
      tiposeguro: '4',
      nometomador: 'Tomador D',
      muradatomador: 'Murada Tomador D',
      idadetomador: 4,
    ),
    Tomador(
      nomeseguradora: 'B',
      nomeseguro: 'E',
      tiposeguro: '5',
      nometomador: 'Tomador E',
      muradatomador: 'Murada Tomador E',
      idadetomador: 5,
    ),
    Tomador(
      nomeseguradora: 'B',
      nomeseguro: 'F',
      tiposeguro: '6',
      nometomador: 'Tomador F',
      muradatomador: 'Murada Tomador F',
      idadetomador: 6,
    )
  ];

  List apolices = [
    Apolices(
      nomeseguradora: 'A',
      nometomador: 'Tomador A',
      muradatomador: 'Murada Tomador A',
      idadetomador: 1,
      nomeseguro: 'A',
      tiposeguro: '1',
      cobertura: 100.0,
      valoranual: 1.0,
      nomeapolice: "A",
      duracao: 1,
      active: true,
    ),
    Apolices(
      nomeseguradora: 'B',
      nometomador: 'Tomador B',
      muradatomador: 'Murada Tomador B',
      idadetomador: 2,
      nomeseguro: 'B',
      tiposeguro: '2',
      cobertura: 200.0,
      valoranual: 2.0,
      nomeapolice: "B",
      duracao: 2,
      active: true,
    ),
    Apolices(
      nomeseguradora: 'A',
      nometomador: 'Tomador C',
      muradatomador: 'Murada Tomador C',
      idadetomador: 3,
      nomeseguro: 'C',
      tiposeguro: '3',
      cobertura: 300.0,
      valoranual: 3.0,
      nomeapolice: "C",
      duracao: 3,
      active: false,
    ),
    Apolices(
      nomeseguradora: 'B',
      nometomador: 'Tomador D',
      muradatomador: 'Murada Tomador D',
      idadetomador: 4,
      nomeseguro: 'D',
      tiposeguro: '4',
      cobertura: 400.0,
      valoranual: 4.0,
      nomeapolice: "D",
      duracao: 4,
      active: false,
    ),
    Apolices(
      nomeseguradora: 'A',
      nometomador: 'Tomador E',
      muradatomador: 'Murada Tomador E',
      idadetomador: 5,
      nomeseguro: 'E',
      tiposeguro: '5',
      cobertura: 500.0,
      valoranual: 10.0,
      nomeapolice: "E",
      duracao: 5,
      active: true,
    ),
    Apolices(
      nomeseguradora: 'B',
      nometomador: 'Tomador F',
      muradatomador: 'Murada Tomador F',
      idadetomador: 6,
      nomeseguro: 'F',
      tiposeguro: '6',
      cobertura: 600.0,
      valoranual: 12.0,
      nomeapolice: "F",
      duracao: 6,
      active: true,
    )
  ];

  List segurados = [
    Segurado(
      nometomador: 'A',
      nomesegurado: 'a',
      tiposegurado: '1',
    ),
    Segurado(
      nometomador: 'B',
      nomesegurado: 'b',
      tiposegurado: '2',
    ),
    Segurado(
      nometomador: 'C',
      nomesegurado: 'c',
      tiposegurado: '3',
    ),
    Segurado(
      nometomador: 'D',
      nomesegurado: 'd',
      tiposegurado: '4',
    ),
    Segurado(
      nometomador: 'E',
      nomesegurado: 'e',
      tiposegurado: '5',
    ),
    Segurado(
      nometomador: 'F',
      nomesegurado: 'f',
      tiposegurado: '6',
    )
  ];
  do {
    //pushar o menu
    menuPrincipal();
    //ler o numero escolhido
    menuprincipal = int.parse(stdin.readLineSync()!); // ler o número escrito
    print("\n");
    //case
    switch (menuprincipal) {
      //numero de apolices ativas e inativas
      case 1:
        do {
          menuDetalhes();
          detalhes = int.parse(stdin.readLineSync()!);
          print('\n');
          switch (detalhes) {
            case 1:
              seguradoras.forEach((e) => print(e.toString()));
              break;
            case 2:
              tiposeguros.forEach((e) => print(e.toString()));
              break;
            case 3:
              tomadores.forEach((e) => print(e.toString()));
              break;
            case 4:
              apolices.forEach((e) => print(e.toString()));
              break;
            case 5:
              segurados.forEach((e) => print(e.toString()));
              break;
            case 6:
              print("\n");
              break;
            //escolha errada
            default:
              print('Invalid choise! Please try again.');
              break;
          }
        } while (detalhes != 6);
        print("Activas: ");
        apolices.where((e) => e.active == true).forEach((e) => print(
              '''\n
    Apolice: 
      Seguradora: ${e.nomeseguradora}
      Tomador: ${e.nometomador}
      Tipo de seguro: ${e.tiposeguro}
      Nome: ${e.nomeapolice}
      Cobertura: ${e.cobertura}
      Valor Anual: ${e.valoranual}
      Duração: ${e.duracao} ano(s)''',
            ));

        print("Inativas: ");
        apolices.where((e) => e.active == false).forEach((e) => print(
              '''\n
    Apolice: 
      Seguradora: ${e.nomeseguradora}
      Tomador: ${e.nometomador}
      Tipo de seguro: ${e.tiposeguro}
      Nome: ${e.nomeapolice}
      Cobertura: ${e.cobertura}
      Valor Anual: ${e.valoranual}
      Duração: ${e.duracao} ano(s)''',
            ));
        break;

      //numero de apolices e valor medio por seguradora
      case 2:
        double max = 0.0;
        double min = 0.0;
        String seguro = '';
        apolices
            .where((e) => e.active == true && max < e.valoranual)
            .forEach((e) {
          max = e.valoranual;
          seguro = e.nomeseguro;
          if (max > e.valoranual) {
            max = e.valoranual;
            seguro = e.nomeseguro;
          }
          print(max);
        });
        print('maximo $max do tipo $seguro');
        apolices
            .where((e) => e.active == true && min > e.valoranual)
            .forEach((e) {
          min = e.valoranual;
          seguro = e.nomeseguro;
          if (min < e.valoranual) {
            min = e.valoranual;
            seguro = e.nomeseguro;
          }
        });

        print('minimo $min do tipo $seguro');
        int counter = 0;
        int counter1 = 0;
        double sum = 0;
        double sum1 = 0;
        print('Numero de Apólices: ${apolices.length}\n');
        //correr a lista de seguradoras
        seguradoras.where((j) => j.nomeseguradora != null).forEach((j) => {
              sum = 0,
              counter = 0,
              //correr as apolices
              apolices
                  .where((e) =>
                      e.nomeseguradora == j.nomeseguradora && e.active == true)
                  .forEach((e) => {
                        //calculo da média do valor anual das apolices para cada
                        //seguradora
                        sum += e.valoranual,
                        counter++,
                        sum1 = sum / counter,
                      }),

              print(
                  'A seguradora ${j.nomeseguradora} tem o valor médio anual de: $sum1\n'),
            });
        break;

      //numero de apolices e valor medio por seguro
      case 3:
        double sum = 0;
        int counter = 0;
        apolices.where((e) => e.active == true).forEach((e) => {
              sum += e.valoranual,
              counter++,
            });
        sum = sum / counter;
        print('O valor médio anual dos seguros é: $sum');
        break;

      // relatório de apolices ativas por
      // tipo de seguro e seguradora
      // valor de cada premio
      case 4:
        seguradoras.where((j) => j.nomeseguradora != null).forEach((j) => {
              print('A seguradora ${j.nomeseguradora} tem as apólices:'),
              apolices
                  .where((e) =>
                      e.nomeseguradora == j.nomeseguradora && e.active == true)
                  .forEach((e) => print(
                        '''
      Tomador: ${e.nometomador}
      Tipo de seguro: ${e.tiposeguro}
      Nome da apólice: ${e.nomeapolice}
      Cobertura: ${e.cobertura}
      Valor Anual: ${e.valoranual}
      Duração: ${e.duracao} ano(s)\n''',
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
          sum += e.cobertura;
        });
        print('O total valor de cobertura das apólices é: $sum€');
        break;

      //quem tem a apolices, nome, idade, murada
      case 7:
        //correr a lista de tomadores
        tomadores.where((j) => j.nometomador != null).forEach((j) => {
              print('O Tomador ${j.nometomador} tem as Apólices:'),
              //correra lista de apolices que extends tomadores
              apolices
                  .where(
                      //verificar se é o tomador que estamos a querer usar e
                      //se é uma apolice activa
                      (e) => e.nometomador == j.nometomador && e.active == true)
                  .forEach((e) => print(
                        '''
      Apólice: ${e.nomeapolice}
      Murada: ${e.muradatomador}
      Idade: ${e.idadetomador}
      ''',
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
  } while (menuprincipal != 8);
}

void menuPrincipal() {
  //menu
  print('\n-------------------Surprises EXIST!----------------------- ');
  print('\n1. Detalhes sobre as várias areas.');
  print('2. Qual é o seguro mais barato e o mais caro?');
  print('3. Quanto é a média dos valores anuais?');
  print('4. Apólices por tipo.');
  print('5. Apólices por tomador');
  print('6. Análise das coberturas e valor anual');
  print('7. Adicionar elementos.');

  print('\n1. Active and Innactive policies.');
  print('2. Average price of active poilicies by insurance.');
  print('3. Average price of active policies by type of insurance');
  print('4. Each value of policies for each insurance and type of.');
  print('5. Analise of anual awards of insurance.');
  print('6. Sum of each policies awards.');
  print('7. Entity of each active policies, age and address.');
  print('8. Exit.\n');
}

void menuDetalhes() {
  //menu 2
  print('-------------------Detalhes----------------------- ');
  print('\n1.Seguradora.');
  print('2. Tipos de Seguros.');
  print('3. Tomadores.');
  print('4. Apólices.');
  print('5. Segurados.');
  print('6. <-- Voltar.\n');
}

void menuValoresAnuais() {
  print('-------------------Valor Anual----------------------- ');
  print('\n1. Por Seguradora.');
  print('2. Por tipo de seguro.\n');
  print('3. <-- Voltar.\n');
}

void menuAnalise() {
  print('---------- Analise Coberturas e Valor anual -------------- ');
  print('1. Maior e menor cobertura e o seu tipo.');
  print('2.Maior e menor valor anual e o seu tipo.');
  print('3. Para cada tipo o maior e menor valor de cobertura e valor anual.');
  print(
    '4. Para cada seguradora o maior e menor valor de cobertura e valor anual.',
  );
  print('5. Total cobertura e valor anual por seguradora.\n');
  print('6. <-- Voltar.\n');
}

void menuAdicionar() {
  print('-------------------Adicionar----------------------- ');
  print('\n1.Seguradora.');
  print('2. Tipos de Seguros.');
  print('3. Tomadores.');
  print('4. Apólices.');
  print('5. Segurados.');
  print('6. <-- Voltar.\n');
}
