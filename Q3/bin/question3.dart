import 'dart:io';
import 'package:trabalho1/seguradoras.dart';
import 'package:trabalho1/apolices.dart';
import 'package:trabalho1/tomadores.dart';
import 'package:trabalho1/tiposeguros.dart';
import 'package:trabalho1/metodos.dart';
import 'package:trabalho1/lista_seguradores.dart';

void main() {
  //criação de um default com cascade notation
  Seguradora defaulted = Seguradora();
  defaulted
    ..nomeseguradora = 'default nome seguradora'
    ..muradaseguradora = 'default murada seguradora'
    ..ano = 1111;

  //declaração de variaveis para uso dos menus
  int menuprincipal = 0;
  int detalhes = 0;
  int analise = 0;
  int adicionar = 0;

  //lista das seguradores
  List seguradoras = [
    Seguradora(
      nomeseguradora: 'Allianz',
      muradaseguradora: "R. Mergunhos 154 R/C, 4410-389 Arcozelo",
      ano: 1890,
    ),
    Seguradora(
      nomeseguradora: 'Bradesco',
      muradaseguradora:
          " Av. Santos Dumont, 3581 - Manuel Dias Branco, Fortaleza",
      ano: 1943,
    )
  ];
  //lista das tipos de seguros
  List tiposeguros = [
    TipoDeSeguro(
      nomeseguradora: 'Allianz',
      nomeseguro: 'Vida Longa',
      tiposeguro: 'Vida',
    ),
    TipoDeSeguro(
      nomeseguradora: 'Allianz',
      nomeseguro: 'Automovel Seguro',
      tiposeguro: 'Auto',
    ),
    TipoDeSeguro(
      nomeseguradora: 'Allianz',
      nomeseguro: 'Casamentos felizes é o mais importante',
      tiposeguro: 'Patrimonial',
    ),
    TipoDeSeguro(
      nomeseguradora: 'Bradesco',
      nomeseguro: 'Casa é onde os sonhos estão',
      tiposeguro: 'Residencial',
    ),
    TipoDeSeguro(
      nomeseguradora: 'Bradesco',
      nomeseguro: 'Viagar faz bem',
      tiposeguro: 'Viagem',
    ),
    TipoDeSeguro(
      nomeseguradora: 'Bradesco',
      nomeseguro: 'Saúde para todos',
      tiposeguro: 'Saúde',
    )
  ];
  //lista das tomadores e segurados
  List tomadores = [
    Tomador(
      nomeseguradora: 'Allianz',
      nomeseguro: 'Vida Longa',
      tiposeguro: 'Vida',
      nometomador: 'Paulo Bernardino',
      muradatomador: 'Travessa do Paraíso',
      idadetomador: 29,
      nomesegurado: 'Paulo Bernardino',
      tiposegurado: 'Pessoal',
    ),
    Tomador(
      nomeseguradora: 'Allianz',
      nomeseguro: 'Automovel Seguro',
      tiposeguro: 'Auto',
      nometomador: 'Pedro Alves',
      muradatomador: 'Ermida de Nossa Senhora',
      idadetomador: 44,
      nomesegurado: 'Toyota 2000',
      tiposegurado: 'Carro',
    ),
    Tomador(
      nomeseguradora: 'Allianz',
      nomeseguro: 'Casamentos felizes é o mais importante',
      tiposeguro: 'Patrimonial',
      nometomador: 'Alexandre Machado',
      muradatomador: 'Rua dos Sete Céus',
      idadetomador: 74,
      nomesegurado: 'Alexandre Machado',
      tiposegurado: 'Pessoal',
    ),
    Tomador(
      nomeseguradora: 'Bradesco',
      nomeseguro: 'Casa é onde os sonhos estão',
      tiposeguro: 'Residencial',
      nometomador: 'Pedro Gonçalves',
      muradatomador: 'Beco do Belo',
      idadetomador: 20,
      nomesegurado: 'Apartamento 5D',
      tiposegurado: 'Casa',
    ),
    Tomador(
      nomeseguradora: 'Bradesco',
      nomeseguro: 'Viagar faz bem',
      tiposeguro: 'Viagem',
      nometomador: 'Paula Gomes',
      muradatomador: 'Rua do Açúcar',
      idadetomador: 18,
      nomesegurado: 'Paula Gomes',
      tiposegurado: 'Pessoal',
    ),
    Tomador(
      nomeseguradora: 'Bradesco',
      nomeseguro: 'Saúde para todos',
      tiposeguro: 'Saúde',
      nometomador: 'Ana Luis',
      muradatomador: 'Travessa da Amorosa',
      idadetomador: 33,
      nomesegurado: 'Ana Luis',
      tiposegurado: 'Pessoal',
    )
  ];
  //lista das apólices
  List apolices = [
    Apolices(
      nomeseguradora: 'Allianz',
      nometomador: 'Paulo Bernardino',
      muradatomador: 'Travessa do Paraíso',
      idadetomador: 29,
      nomeseguro: 'Vida Longa',
      tiposeguro: 'Vida',
      cobertura: 5005000.0,
      valoranual: 20000.0,
      nomeapolice: "Apólice de Vida Paulo Bernardino",
      duracao: 100,
      active: true,
    ),
    Apolices(
      nomeseguradora: 'Bradesco',
      nometomador: 'Pedro Alves',
      muradatomador: 'Ermida de Nossa Senhora',
      idadetomador: 44,
      nomeseguro: 'Automovel Seguro',
      tiposeguro: 'Auto',
      cobertura: 5000.0,
      valoranual: 400.23,
      nomeapolice: "Apólice de Carro Pedro Alves",
      duracao: 20,
      active: true,
    ),
    Apolices(
      nomeseguradora: 'Allianz',
      nometomador: 'Alexandre Machado',
      muradatomador: 'Rua dos Sete Céus',
      idadetomador: 74,
      nomeseguro: 'Casamentos felizes é o mais importante',
      tiposeguro: 'Patrimonial',
      cobertura: 40000.0,
      valoranual: 500.5,
      nomeapolice: "Apólice Patrimonial Alexandre Machado",
      duracao: 100,
      active: false,
    ),
    Apolices(
      nomeseguradora: 'Bradesco',
      nometomador: 'Pedro Gonçalves',
      muradatomador: 'Beco do Belo',
      idadetomador: 20,
      nomeseguro: 'Casa é onde os sonhos estão',
      tiposeguro: 'Residencial',
      cobertura: 60000.0,
      valoranual: 1013.6,
      nomeapolice: "Apólice Residencial Pedro Gonçalves",
      duracao: 40,
      active: false,
    ),
    Apolices(
      nomeseguradora: 'Allianz',
      nometomador: 'Paula Gomes',
      muradatomador: 'Rua do Açúcar',
      idadetomador: 18,
      nomeseguro: 'Viagar faz bem',
      tiposeguro: 'Viagem',
      cobertura: 2000.0,
      valoranual: 150.8,
      nomeapolice: "Apólice Viagem Paula Gomes",
      duracao: 1,
      active: true,
    ),
    Apolices(
      nomeseguradora: 'Bradesco',
      nometomador: 'Ana Luis',
      muradatomador: 'Travessa da Amorosa',
      idadetomador: 33,
      nomeseguro: 'Saúde para todos',
      tiposeguro: 'Saúde',
      cobertura: 10000.0,
      valoranual: 2010.2,
      nomeapolice: "Apólice Saúde Ana Luis",
      duracao: 1,
      active: true,
    ),
    Apolices(
      nomeseguradora: 'Bradesco',
      nometomador: 'Nadine Luis',
      muradatomador: 'Travessa da Saúde',
      idadetomador: 30,
      nomeseguro: 'Saúde para todos',
      tiposeguro: 'Saúde',
      cobertura: 20000.0,
      valoranual: 1010.2,
      nomeapolice: "Apólice Saúde Nadine Luis",
      duracao: 0.6,
      active: true,
    ),
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
        //sub-menu para poder escolher o que quer ver das diferentes areas
        do {
          menuDetalhes();
          detalhes = int.parse(stdin.readLineSync()!);
          print('\n');
          switch (detalhes) {
            //mostrar as seguradoras
            case 1:
              seguradoras.forEach((e) => print(e.toString()));
              break;
            //mostrar as tipos de seguros presentes
            case 2:
              tiposeguros.forEach((e) => print(e.toString()));
              break;
            //mostrar as tomadores
            case 3:
              tomadores.forEach((e) => print(e.toString()));
              break;
            //mostrar as apólices
            case 4:
              apolices.forEach((e) => print(e.toString()));
              break;
            //mostrar as segurados
            case 5:
              tomadores.forEach((e) => print(
                    '''Segurado: ${e.nomesegurado}
      Tomador: ${e.nometomador}
      Tipo de segurado: ${e.tiposegurado}
            ''',
                  ));
              break;

            //voltar atras
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

      //caso 2 do menu principal seguro mais caro e mais barato
      case 2:
        //-----------------------Seguro mais caro---------------------
        seguroMaisCaro();
        //-----------------------Seguro mais barato---------------------

        seguroMaisBarato();
        break;

      //caso 3 do menu principal
      case 3:
        //--------------------------media anual por seguro----------------------
        mediaAnualSeguro();
        break;
      case 4:
        //-----------------------apólice activas e inativas-------------------
        print('Apólices ativas:\n');
        apolices.where((e) => e.active == true).forEach((e) => print('''
      ${e.toString()}\n'''));
        print('Apólices inativas:\n');
        apolices.where((e) => e.active == false).forEach((e) => print('''
      ${e.toString()}\n'''));
        break;
      case 5:
        //-----------------------apolices por tipo-------------------
        tipoApolices();
        break;

      case 6:
        //--------------------------apólices por tomador----------------------
        apolicesTomador();
        break;

      case 7:
        do {
          //---------------------------Sub-menu analise--------------------
          menuAnalise();
          analise = int.parse(stdin.readLineSync()!); // ler o número escrito
          print("\n");
          //case
          switch (analise) {
            case 1:
              //----------------------maior e menor cobertura-----------------
              //---------------------------maior cobertura--------------------
              Cobertura().maiorCobertura();
              //------------------------menor cobertura------------------------
              Cobertura().menorCobertura();
              break;

            case 2:
              //---------------------maior e menor valor anual--------------------
              //----------------------maior valor anual-----------------
              ValorAnual().maiorValorAnual();

              //---------------------------menor valor anual--------------------
              ValorAnual().menorValorAnual();
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
              //---------------------total cobertura e valor anual---------------
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
      case 8:
        //---------------------------sub-menu adicionar--------------------
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
              //---------------------------adicionar seguradora--------------------
              print('Nome da Seguradora:');
              String? snome = stdin.readLineSync();
              print('Murada da Seguradora:');
              String? smurada = stdin.readLineSync();
              print('Criada no ano de:');
              int sano = int.parse(stdin.readLineSync()!);
              seguradoras.add(Seguradora(
                nomeseguradora: snome,
                muradaseguradora: smurada,
                ano: sano,
              ));
              break;
            case 2:
              //---------------------adicionar tipos de seguro--------------------
              print('Nome da Seguradora que pertence:');
              String? seguroSnome = stdin.readLineSync();
              print('Nome do Seguro:');
              String? seguronome = stdin.readLineSync();
              print('Tipo de Seguro:');
              String? segurotipo = stdin.readLineSync();
              tiposeguros.add(TipoDeSeguro(
                nomeseguradora: seguroSnome,
                nomeseguro: seguronome,
                tiposeguro: segurotipo,
              ));
              break;
            case 3:
              //---------------------------adicionar tomador--------------------
              print('Nome da Seguradora que pertence:');
              String? tomadorSnome = stdin.readLineSync();
              print('Nome do Seguro que pertence:');
              String? tomadorSeguronome = stdin.readLineSync();
              print('Tipo de Seguro que fez:');
              String? tomadorSegurotipo = stdin.readLineSync();
              print('Nome do Tomador:');
              String? tomadornome = stdin.readLineSync();
              print('Murada do Tomador:');
              String? tomadormurada = stdin.readLineSync();
              print('Idade do Tomador:');
              int tomadoridade = int.parse(stdin.readLineSync()!);
              print('Nome do Segurado (se for prório escrever o nome):');
              String? seguradonome = stdin.readLineSync();
              print('Tipo de Segurado:');
              String? seguradotipo = stdin.readLineSync();
              tomadores.add(Tomador(
                nomeseguradora: tomadorSnome,
                nomeseguro: tomadorSeguronome,
                tiposeguro: tomadorSegurotipo,
                nometomador: tomadornome,
                muradatomador: tomadormurada,
                idadetomador: tomadoridade,
                nomesegurado: seguradonome,
                tiposegurado: seguradotipo,
              ));
              break;
            case 4:
              //---------------------------adicionar apolcies--------------------
              print('Nome da Seguradora que pertence:');
              String? apoliceSnome = stdin.readLineSync();
              print('Nome do Tomador:');
              String? apoliceTomadornome = stdin.readLineSync();
              print('Murada do Tomador:');
              String? apoliceTomadormurada = stdin.readLineSync();
              print('Idade do Tomador:');
              int apoliceTomadoridade = int.parse(stdin.readLineSync()!);
              print('Nome do Seguro que pertence:');
              String? apoliceSeguronome = stdin.readLineSync();
              print('Tipo de Seguro:');
              String? apoliceTiposeguro = stdin.readLineSync();
              print('Cobertura dada:');
              double apolicecobertura = double.parse(stdin.readLineSync()!);
              print('Valor Anual a ser pago:');
              double apolicevaloranual = double.parse(stdin.readLineSync()!);
              print('Nome da Apólice:');
              String? apolicenome = stdin.readLineSync();
              print('Duração da Apólice');
              double apoliceduracao = double.parse(stdin.readLineSync()!);
              print('Apólice activa? (Y/N)');
              String condicao = stdin.readLineSync()!.toLowerCase();
              bool apoliceactive = false;
              if (condicao == 'y') {
                apoliceactive = true;
              }
              apolices.add(Apolices(
                nomeseguradora: apoliceSnome,
                nometomador: apoliceTomadornome,
                muradatomador: apoliceTomadormurada,
                idadetomador: apoliceTomadoridade,
                nomeseguro: apoliceSeguronome,
                tiposeguro: apoliceTiposeguro,
                cobertura: apolicecobertura,
                valoranual: apolicevaloranual,
                nomeapolice: apolicenome,
                duracao: apoliceduracao,
                active: apoliceactive,
              ));
              break;
            case 5:
              print('\n');
              break;
            default:
              print('Invalid choise! Please try again.');
              break;
          }
        } while (adicionar != 5);
        break;

      //exit
      case 9:
        print('                  Have a Good Day!');
        print("\n");
        break;
      //escolha errada
      default:
        print('Invalid choise! Please try again.');
        break;
    }
    //parar se for escolhido 8
  } while (menuprincipal != 9);
}
