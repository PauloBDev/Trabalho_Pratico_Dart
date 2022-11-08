import 'dart:async';
import 'dart:io';
import 'package:trabalho1/seguradoras.dart';
import 'package:trabalho1/apolices.dart';
import 'package:trabalho1/tomadores.dart';
import 'package:trabalho1/tiposeguros.dart';

void main() {
  int menuprincipal = 0;
  int detalhes = 0;
  int analise = 0;
  int adicionar = 0;
  List seguradoras = [
    Seguradora(
      nomeseguradora: 'A',
      muradaseguradora: "Seguradora A murada",
      ano: 1990,
    ),
    Seguradora(
      nomeseguradora: 'B',
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
      nomesegurado: 'a',
      tiposegurado: '1',
    ),
    Tomador(
      nomeseguradora: 'A',
      nomeseguro: 'B',
      tiposeguro: '2',
      nometomador: 'Tomador B',
      muradatomador: 'Murada Tomador B',
      idadetomador: 2,
      nomesegurado: 'b',
      tiposegurado: '2',
    ),
    Tomador(
      nomeseguradora: 'A',
      nomeseguro: 'C',
      tiposeguro: '3',
      nometomador: 'Tomador C',
      muradatomador: 'Murada Tomador C',
      idadetomador: 3,
      nomesegurado: 'c',
      tiposegurado: '3',
    ),
    Tomador(
      nomeseguradora: 'B',
      nomeseguro: 'D',
      tiposeguro: '4',
      nometomador: 'Tomador D',
      muradatomador: 'Murada Tomador D',
      idadetomador: 4,
      nomesegurado: 'd',
      tiposegurado: '4',
    ),
    Tomador(
      nomeseguradora: 'B',
      nomeseguro: 'E',
      tiposeguro: '5',
      nometomador: 'Tomador E',
      muradatomador: 'Murada Tomador E',
      idadetomador: 5,
      nomesegurado: 'e',
      tiposegurado: '5',
    ),
    Tomador(
      nomeseguradora: 'B',
      nomeseguro: 'F',
      tiposeguro: '6',
      nometomador: 'Tomador F',
      muradatomador: 'Murada Tomador F',
      idadetomador: 6,
      nomesegurado: 'f',
      tiposegurado: '6',
    )
  ];

  List apolices = [
    Apolices(
      nomeseguradora: 'A',
      nometomador: 'Tomador A',
      muradatomador: 'Murada Tomador A',
      idadetomador: 1,
      nomeseguro: 'A',
      tiposeguro: '6',
      cobertura: 1000.0,
      valoranual: 3000.0,
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
      tiposeguro: '6',
      cobertura: 200.0,
      valoranual: 90.0,
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
      valoranual: 88.0,
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
      cobertura: 1000.0,
      valoranual: 16.0,
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
      tiposeguro: '6',
      cobertura: 500.0,
      valoranual: 300.0,
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
      cobertura: 900.0,
      valoranual: 3.0,
      nomeapolice: "F",
      duracao: 6,
      active: true,
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
              tomadores.forEach((e) => print(
                    '''Segurado: ${e.nomesegurado}
      Tomador: ${e.nometomador}
      Tipo de segurado: ${e.tiposegurado}
            ''',
                  ));
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
        break;
      //print("Activas: ");
      //     apolices.where((e) => e.active == true).forEach((e) => print(
      //           '''\n
      // Apolice:
      //   Seguradora: ${e.nomeseguradora}
      //   Tomador: ${e.nometomador}
      //   Tipo de seguro: ${e.tiposeguro}
      //   Nome: ${e.nomeapolice}
      //   Cobertura: ${e.cobertura}
      //   Valor Anual: ${e.valoranual}
      //   Duração: ${e.duracao} ano(s)''',
      //         ));

      //print("Inativas: ");
      //     apolices.where((e) => e.active == false).forEach((e) => print(
      //           '''\n
      // Apolice:
      //   Seguradora: ${e.nomeseguradora}
      //   Tomador: ${e.nometomador}
      //   Tipo de seguro: ${e.tiposeguro}
      //   Nome: ${e.nomeapolice}
      //   Cobertura: ${e.cobertura}
      //   Valor Anual: ${e.valoranual}
      //   Duração: ${e.duracao} ano(s)''',
      //         ));

      //numero de apolices e valor medio por seguradora
      case 2:
        double max = 0.0;
        double min = apolices[0].valoranual;
        String seguro = '';
        String seguromin = apolices[0].nomeseguro;
        apolices
            .where((e) => e.active == true && max < e.valoranual)
            .forEach((e) {
          max = e.valoranual;
          seguro = e.nomeseguro;
          if (max < e.valoranual) {
            max = e.valoranual;
            seguro = e.nomeseguro;
          }
        });
        apolices
            .where((e) => e.valoranual == max && e.nomeseguro == seguro)
            .forEach((e) => print(
                  ''' Seguro mais caro é...
      Nome do Seguro: ${e.nomeseguro}
      Tipo de Seguro: ${e.tiposeguro}
      Cobertura: ${e.cobertura}
      Valor Anual: ${e.valoranual}
      Seguradora: ${e.nomeseguradora}\n''',
                ));
        apolices
            .where((e) => e.active == true && min > e.valoranual)
            .forEach((e) {
          min = e.valoranual;
          seguromin = e.nomeseguro;
          if (min > e.valoranual) {
            min = e.valoranual;
            seguromin = e.nomeseguro;
          }
        });
        apolices
            .where((e) => e.valoranual == min && e.nomeseguro == seguromin)
            .forEach((e) => print(
                  ''' Seguro mais barato é...
      Nome do Seguro: ${e.nomeseguro}
      Tipo de Seguro: ${e.tiposeguro}
      Cobertura: ${e.cobertura}
      Valor Anual: ${e.valoranual}
      Seguradora: ${e.nomeseguradora}\n''',
                ));
        break;

      //numero de apolices e valor medio por seguro
      case 3:
        double sum = 0;
        int counter = 0;
        apolices
            .where((j) => j.nomeseguro != null && j.active == true)
            .forEach((j) {
          sum = 0;
          counter = 0;
          print('O seguro de ${j.nomeseguro} tem um valor anual médio de:');
          apolices
              .where((e) => e.active == true && e.nomeseguro == j.nomeseguro)
              .forEach((e) => {
                    sum += e.valoranual,
                    counter++,
                  });
          sum = sum / counter;
          print('             -->$sum');
        });
        break;

      case 4:
        tiposeguros.where((j) => j.tiposeguro != null).forEach((j) => {
              print('O seguro de ${j.tiposeguro} tem as apólices: '),
              apolices
                  .where((e) => e.tiposeguro == j.tiposeguro)
                  .forEach((e) => print(
                        ''' Apólice...
      Nome da Apolice: ${e.nomeapolice}
      Cobertura: ${e.cobertura}
      Valor Anual: ${e.valoranual}
      Seguradora: ${e.nomeseguradora}
      Tomador: ${e.nometomador}\n''',
                      )),
            });
        break;

      case 5:
        tomadores.where((j) => j.nometomador != null).forEach((j) => {
              print('O tomador ${j.nometomador} tem as apólices: '),
              apolices
                  .where(
                      (e) => e.nometomador == j.nometomador && e.active == true)
                  .forEach((e) => print(
                        ''' Apólice...
      Tomador: ${e.nometomador}
      Nome da Apolice: ${e.nomeapolice}
      Cobertura: ${e.cobertura}
      Valor Anual: ${e.valoranual}
      Seguradora: ${e.nomeseguradora}
      Segurado: ${j.tiposegurado}\n''',
                      ))
            });
        break;

      case 6:
        do {
          menuAnalise();
          analise = int.parse(stdin.readLineSync()!); // ler o número escrito
          print("\n");
          //case
          switch (analise) {
            case 1:
              double max = 0.0;
              double min = apolices[0].valoranual;
              String seguro = '';
              String seguromin = apolices[0].nomeseguro;
              apolices
                  .where((e) => e.active == true && max < e.cobertura)
                  .forEach((e) {
                max = e.cobertura;
                seguro = e.nomeseguro;
                if (max < e.cobertura) {
                  max = e.cobertura;
                  seguro = e.nomeseguro;
                }
              });
              apolices
                  .where((e) => e.cobertura == max && e.nomeseguro == seguro)
                  .forEach((e) => print(
                        ''' Apolice com menor cobertura é...
              Tipo de Seguro: ${e.tiposeguro}
              Nome da Apolice: ${e.nomeapolice}
              Cobertura: ${e.cobertura}\n''',
                      ));

              apolices
                  .where((e) => e.active == true && min > e.cobertura)
                  .forEach((e) {
                min = e.cobertura;
                seguromin = e.tiposeguro;
                if (min > e.cobertura) {
                  min = e.valoranual;
                  seguromin = e.tiposeguro;
                }
              });
              apolices
                  .where((e) => e.cobertura == min && e.tiposeguro == seguromin)
                  .forEach((e) => print(
                        ''' Apolice com menor cobertura é...
              Tipo de Seguro: ${e.tiposeguro}
              Nome da Apolice: ${e.nomeapolice}
              Cobertura: ${e.cobertura}\n''',
                      ));
              break;
            case 2:
              double max = 0.0;
              double min = apolices[0].valoranual;
              String seguro = '';
              String seguromin = apolices[0].tiposeguro;
              apolices
                  .where((e) => e.active == true && max < e.valoranual)
                  .forEach((e) {
                max = e.valoranual;
                seguro = e.tiposeguro;
                if (max < e.valoranual) {
                  max = e.valoranual;
                  seguro = e.tiposeguro;
                }
              });
              apolices
                  .where((e) => e.valoranual == max && e.tiposeguro == seguro)
                  .forEach((e) => print(
                        ''' Apolice com maior valor anual é...
      Tipo de Seguro: ${e.tiposeguro}
      Nome da Apólice: ${e.nomeapolice}
      Valor Anual: ${e.valoranual}\n''',
                      ));
              apolices
                  .where((e) => e.active == true && min > e.valoranual)
                  .forEach((e) {
                min = e.valoranual;
                seguromin = e.tiposeguro;
                if (min > e.valoranual) {
                  min = e.valoranual;
                  seguromin = e.tiposeguro;
                }
              });
              apolices
                  .where(
                      (e) => e.valoranual == min && e.tiposeguro == seguromin)
                  .forEach((e) => print(
                        ''' Apolice com menor valor anual é...
      Tipo de Seguro: ${e.tiposeguro}
      Nome da Apólice: ${e.nomeapolice}
      Valor Anual: ${e.valoranual}\n''',
                      ));
              break;
            case 3:
              double max = 0.0;
              double min = apolices[0].valoranual;
              String seguro = '';
              String seguromin = apolices[0].tiposeguro;
              tiposeguros.where((j) => j.tiposeguro != null).forEach((j) => {
                    max = 0.0,
                    min = apolices[0].valoranual,
                    seguro = '',
                    seguromin = apolices[0].tiposeguro,
                    print(
                      'O seguro de ${j.tiposeguro}:',
                    ),
                    // valor anual ------------------------------------
                    // MAIOR ---------------------------------------
                    apolices
                        .where((e) =>
                            e.active == true &&
                            max <= e.valoranual &&
                            e.tiposeguro == j.tiposeguro)
                        .forEach((e) {
                      max = e.valoranual;
                      seguro = e.tiposeguro;
                      if (max < e.valoranual) {
                        max = e.valoranual;
                        seguro = e.tiposeguro;
                      }
                    }),
                    apolices
                        .where((e) =>
                            e.valoranual == max && e.tiposeguro == seguro)
                        .forEach((e) => print(
                              ''' Maior valor anual...
      Tipo de Seguro: ${e.tiposeguro}
      Nome da Apólice: ${e.nomeapolice}
      Valor Anual: ${e.valoranual}\n''',
                            )),
                    // MENOR -------------------------------------
                    apolices
                        .where((e) =>
                            e.active == true &&
                            min >= e.valoranual &&
                            e.tiposeguro == j.tiposeguro)
                        .forEach((e) {
                      min = e.valoranual;
                      seguromin = e.tiposeguro;
                      if (min > e.valoranual) {
                        min = e.valoranual;
                        seguromin = e.tiposeguro;
                      }
                    }),
                    apolices
                        .where((e) =>
                            e.valoranual == min && e.tiposeguro == seguromin)
                        .forEach((e) => print(
                              '''                     Menor valor anual...
                            Tipo de Seguro: ${e.tiposeguro}
                            Nome da Apólice: ${e.nomeapolice}
                            Valor Anual: ${e.valoranual}\n''',
                            )),

                    //cobertura--------------------------------
                    //MAIOR ------------------------------------
                    max = 0,
                    min = apolices[0].cobertura,
                    seguro = '',
                    seguromin = apolices[0].tiposeguro,

                    apolices
                        .where((e) =>
                            e.active == true &&
                            max <= e.cobertura &&
                            e.tiposeguro == j.tiposeguro)
                        .forEach((e) {
                      max = e.cobertura;
                      seguro = e.tiposeguro;
                      if (max < e.cobertura) {
                        max = e.cobertura;
                        seguro = e.tiposeguro;
                      }
                    }),
                    apolices
                        .where(
                            (e) => e.cobertura == max && e.tiposeguro == seguro)
                        .forEach((e) => print(
                              ''' Maior cobertura...
      Tipo de Seguro: ${e.tiposeguro}
      Nome da Apólice: ${e.nomeapolice}
      Cobertura: ${e.cobertura}\n''',
                            )),
                    //MENOR-----------------------------------------
                    apolices
                        .where((e) =>
                            e.active == true &&
                            min >= e.cobertura &&
                            e.tiposeguro == j.tiposeguro)
                        .forEach((e) {
                      min = e.cobertura;
                      seguromin = e.tiposeguro;
                      if (min > e.cobertura) {
                        min = e.cobertura;
                        seguromin = e.tiposeguro;
                      }
                    }),
                    apolices
                        .where((e) =>
                            e.cobertura == min && e.tiposeguro == seguromin)
                        .forEach((e) => print(
                              '''                     Menor cobertura...
                            Tipo de Seguro: ${e.tiposeguro}
                            Nome da Apólice: ${e.nomeapolice}
                            Cobertura: ${e.cobertura}\n''',
                            )),
                    print(
                        '-----------------------------------------------------')
                  });
              break;

            case 4:
              double max = 0.0;
              double min = apolices[0].valoranual;
              String seguradora = '';
              String seguradoramin = apolices[0].nomeseguradora;
              seguradoras
                  .where((j) => j.nomeseguradora != null)
                  .forEach((j) => {
                        max = 0.0,
                        min = apolices[0].valoranual,
                        seguradora = '',
                        seguradoramin = apolices[0].nomeseguradora,
                        print(
                          'A seguradora ${j.nomeseguradora}:',
                        ),
                        // valor anual ------------------------------------
                        // MAIOR ---------------------------------------
                        apolices
                            .where((e) =>
                                e.active == true &&
                                max <= e.valoranual &&
                                e.nomeseguradora == j.nomeseguradora)
                            .forEach((e) {
                          max = e.valoranual;
                          seguradora = e.nomeseguradora;
                          if (max < e.valoranual) {
                            max = e.valoranual;
                            seguradora = e.nomeseguradora;
                          }
                        }),
                        apolices
                            .where((e) =>
                                e.valoranual == max &&
                                e.nomeseguradora == seguradora)
                            .forEach((e) => print(
                                  ''' Maior valor anual...
      Seguradora: ${e.nomeseguradora}
      Nome da Apólice: ${e.nomeapolice}
      Valor Anual: ${e.valoranual}\n''',
                                )),
                        // MENOR -------------------------------------
                        apolices
                            .where((e) =>
                                e.active == true &&
                                min >= e.valoranual &&
                                e.nomeseguradora == j.nomeseguradora)
                            .forEach((e) {
                          min = e.valoranual;
                          seguradoramin = e.nomeseguradora;
                          if (min > e.valoranual) {
                            min = e.valoranual;
                            seguradoramin = e.nomeseguradora;
                          }
                        }),
                        apolices
                            .where((e) =>
                                e.valoranual == min &&
                                e.nomeseguradora == seguradoramin)
                            .forEach((e) => print(
                                  '''                     Menor valor anual...
                            Seguradora: ${e.nomeseguradora}
                            Nome da Apólice: ${e.nomeapolice}
                            Valor Anual: ${e.valoranual}\n''',
                                )),

                        //cobertura--------------------------------
                        //MAIOR ------------------------------------
                        max = 0,
                        min = apolices[0].cobertura,
                        seguradora = '',
                        seguradoramin = apolices[0].nomeseguradora,

                        apolices
                            .where((e) =>
                                e.active == true &&
                                max <= e.cobertura &&
                                e.nomeseguradora == j.nomeseguradora)
                            .forEach((e) {
                          max = e.cobertura;
                          seguradora = e.nomeseguradora;
                          if (max < e.cobertura) {
                            max = e.cobertura;
                            seguradora = e.nomeseguradora;
                          }
                        }),
                        apolices
                            .where((e) =>
                                e.cobertura == max &&
                                e.nomeseguradora == seguradora)
                            .forEach((e) => print(
                                  ''' Maior cobertura...
      Seguradora: ${e.nomeseguradora}
      Nome da Apólice: ${e.nomeapolice}
      Cobertura: ${e.cobertura}\n''',
                                )),
                        //MENOR-----------------------------------------
                        apolices
                            .where((e) =>
                                e.active == true &&
                                min > e.cobertura &&
                                e.nomeseguradora == j.nomeseguradora)
                            .forEach((e) {
                          min = e.cobertura;
                          seguradoramin = e.nomeseguradora;
                          if (min > e.cobertura) {
                            min = e.cobertura;
                            seguradoramin = e.nomeseguradora;
                          }
                          print(min);
                        }),
                        apolices
                            .where((e) =>
                                e.cobertura == min &&
                                e.nomeseguradora == seguradoramin)
                            .forEach((e) => print(
                                  '''                     Menor cobertura...
                            Seguradora: ${e.nomeseguradora}
                            Nome da Apólice: ${e.nomeapolice}
                            Cobertura: ${e.cobertura}\n''',
                                )),
                        print(
                            '-----------------------------------------------------')
                      });
              break;
            case 5:
              seguradoras.where((j) => j.nomeseguradora != null).forEach((j) {
                double sumcobertura = 0;
                double sumvaloranual = 0;
                apolices.where((e) => e.active == true).forEach((e) {
                  sumcobertura += e.cobertura;
                  sumvaloranual += e.valoranual;
                });
                print(
                  'O total valor de cobertura da seguradora ${j.nomeseguradora} é: $sumcobertura€',
                );
                print(
                    'O total de valor anual pela seguradora ${j.nomeseguradora} é: $sumvaloranual€');
              });
              break;
            case 6:
              print('\n');
              break;
            default:
              print('Invalid choise! Please try again.');
              break;
          }
        } while (analise != 6);
        break;
      //quem tem a apolices, nome, idade, murada
      case 7:
        do {
          //pushar o menu
          menuAdicionar();
          //ler o numero escolhido
          adicionar = int.parse(stdin.readLineSync()!); // ler o número escrito
          print("\n");
          //case
          switch (adicionar) {
            //numero de apolices ativas e inativas
            case 1:
              break;
            case 2:
              break;
            case 3:
              break;
            case 4:
              break;
            case 5:
              break;
            case 6:
              print('\n');
              break;
            default:
              print('Invalid choise! Please try again.');
              break;
          }
        } while (adicionar != 6);
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
  print('8. Exit.\n');
}

void menuDetalhes() {
  //menu 2
  print('-------------------Detalhes----------------------- ');
  print('\n1. Seguradora.');
  print('2. Tipos de Seguros.');
  print('3. Tomadores.');
  print('4. Apólices.');
  print('5. Segurados.');
  print('6. <-- Voltar.\n');
}

void menuAnalise() {
  print('---------- Analise Coberturas e Valor anual -------------- ');
  print('1. Maior e menor cobertura e o seu tipo de seguro.');
  print('2. Maior e menor valor anual e o seu tipo de seguro.');
  print('''3. Para cada tipo de seguro: 
              o maior e menor valor de cobertura.
              o maior e menor valor anual.''');
  print('''4. Para cada seguradora 
              o maior e menor valor de cobertura.
              o maior e menor valor anual.''');
  print('5. Total cobertura e valor anual por seguradora.');
  print('6. <-- Voltar.\n');
}

void menuAdicionar() {
  print('-------------------Adicionar----------------------- ');
  print('\n1. Seguradora.');
  print('2. Tipos de Seguros.');
  print('3. Tomadores.');
  print('4. Apólices.');
  print('5. Segurados.');
  print('6. <-- Voltar.\n');
}
