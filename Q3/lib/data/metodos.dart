import 'package:trabalho1/data/lista_seguradores.dart';

void menuPrincipal() {
  //menu principal
  print('\n-------------------Surpresas Existem!!----------------------- ');
  print('\n1. Detalhes sobre as várias areas.');
  print('2. Qual é o seguro mais barato e o mais caro?');
  print('3. Quanto é a média dos valores anuais?');
  print('4. Apólices activas e Inativas');
  print('5. Apólices por tipo.');
  print('6. Apólices por tomador');
  print('7. Análise das coberturas e valor anual');
  print('8. Adicionar elementos.');
  print('9. Remover elementos.');
  print('0. Exit.\n');
}

//meno da primeira opção, para ver os detalhes das entidades
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

//menu da analise dos valores associados do problema
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

//menu para escolher o que adicionar
void menuAdicionar() {
  print('-------------------Adicionar----------------------- ');
  print('\n1. Seguradora.');
  print('2. Tipos de Seguros.');
  print('3. Tomadores.');
  print('4. Apólices.');
  print('5. <-- Voltar.\n');
}

//menu para escolher o que remover, apenas usamos estes dois porque
//fora desses não vimos utilidade visto que se queremos eliminar tomadores
//eles teram sempre apólice no sentido que só entram em apliceção se
//ouver já uma apólice dada ao tomador
void menuRemover() {
  print('-------------------Adicionar----------------------- ');
  print('\n1. Seguradora.');
  print('2. Tipos de Seguros.');
  print('3. <-- Voltar.\n');
}

//verificar o seguro mais caro
void seguroMaisCaro() {
  print('-----------------Mais Caro----------------------');
  double max = 0.0;
  double min = apolices[0].valoranual;
  String seguro = '';
  String seguromin = apolices[0].nomeseguro;
  apolices.where((e) => e.active == true && max < e.valoranual).forEach((e) {
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
}

//verificar o seguro mais barato
void seguroMaisBarato() {
  print('-----------------Mais barato----------------------');
  double max = 0.0;
  double min = apolices[0].valoranual;
  String seguro = '';
  String seguromin = apolices[0].nomeseguro;
  apolices.where((e) => e.active == true && min > e.valoranual).forEach((e) {
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
}

//mostrar para cada tipo de seguro as apólices
void tipoApolices() {
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
}

//media do valor anual por seguro
void mediaAnualSeguro() {
  print('-----------------Média----------------------');
  double sum = 0;
  int counter = 0;
  apolices.where((j) => j.nomeseguro != null && j.active == true).forEach((j) {
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
}

//calcular a maior e menor cobertura
class Cobertura {
  double max = 0.0;
  double min = apolices[0].valoranual;
  String seguro = '';
  String seguromin = apolices[0].nomeseguro;
  //calcular a maior cobertura
  void maiorCobertura() {
    print('-----------------Maior----------------------');
    apolices.where((e) => e.active == true && max < e.cobertura).forEach((e) {
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
              '''Apolice com maior cobertura é...
      Tipo de Seguro: ${e.tiposeguro}
      Nome da Apolice: ${e.nomeapolice}
      Cobertura: ${e.cobertura}\n''',
            ));
  }

  //calcular a menor cobertura
  void menorCobertura() {
    print('-----------------Menor----------------------');
    apolices.where((e) => e.active == true && min > e.cobertura).forEach((e) {
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
              '''Apolice com menor cobertura é...
      Tipo de Seguro: ${e.tiposeguro}
      Nome da Apolice: ${e.nomeapolice}
      Cobertura: ${e.cobertura}\n''',
            ));
  }
}

//mostrar as apólices por tomador
void apolicesTomador() {
  tomadores.where((j) => j.nometomador != null).forEach((j) => {
        print('O tomador ${j.nometomador} tem as apólices: '),
        apolices
            .where((e) => e.nometomador == j.nometomador && e.active == true)
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
}

//calcular o maior e menor valor anual
class ValorAnual {
  double max = 0.0;
  double min = apolices[0].valoranual;
  String seguro = '';
  String seguromin = apolices[0].tiposeguro;
  //calcular o maior valor anual
  void maiorValorAnual() {
    print('-----------------Maior----------------------');
    apolices.where((e) => e.active == true && max < e.valoranual).forEach((e) {
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
  }

  //calcular o menor valor anual
  void menorValorAnual() {
    print('-----------------Menor----------------------');
    apolices.where((e) => e.active == true && min > e.valoranual).forEach((e) {
      min = e.valoranual;
      seguromin = e.tiposeguro;
      if (min > e.valoranual) {
        min = e.valoranual;
        seguromin = e.tiposeguro;
      }
    });
    apolices
        .where((e) => e.valoranual == min && e.tiposeguro == seguromin)
        .forEach((e) => print(
              ''' Apolice com menor valor anual é...
      Tipo de Seguro: ${e.tiposeguro}
      Nome da Apólice: ${e.nomeapolice}
      Valor Anual: ${e.valoranual}\n''',
            ));
  }
}

class TipoSeguroVAnual {
  // valor anual por tipo de seguro ------------------------------------
  double max = 0.0;
  double min = apolices[0].valoranual;
  String seguro = '';
  String seguromin = apolices[0].tiposeguro;
  void vAnualMaior() {
    print('-----------------Maior valor anual Seguro----------------------');
    // MAIOR ---------------------------------------
    tiposeguros.where((j) => j.tiposeguro != null).forEach((j) => {
          max = 0.0,
          min = apolices[0].valoranual,
          seguro = '',
          seguromin = apolices[0].tiposeguro,
          print(
            'O seguro de ${j.tiposeguro}:',
          ),
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
              .where((e) => e.valoranual == max && e.tiposeguro == seguro)
              .forEach((e) => print(
                    ''' Maior valor anual...
      Tipo de Seguro: ${e.tiposeguro}
      Nome da Apólice: ${e.nomeapolice}
      Valor Anual: ${e.valoranual}\n''',
                  ))
        });
  }

  void vAnualMenor() {
    print('-----------------Menor valor anual Seguro----------------------');
    //MENOR-----------------------------------------
    tiposeguros.where((j) => j.tiposeguro != null).forEach((j) => {
          max = 0.0,
          min = apolices[0].valoranual,
          seguro = '',
          seguromin = apolices[0].tiposeguro,
          print(
            'O seguro de ${j.tiposeguro}:',
          ),
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
              .where((e) => e.cobertura == min && e.tiposeguro == seguromin)
              .forEach((e) => print(
                    '''Menor cobertura...
      Tipo de Seguro: ${e.tiposeguro}
      Nome da Apólice: ${e.nomeapolice}
      Cobertura: ${e.cobertura}\n''',
                  )),
        });
    print('-----------------------------------------------------');
  }
}

class TipoSeguroCobertura {
  //cobertura por tipo de seguro
  double max = 0.0;
  double min = apolices[0].valoranual;
  String seguro = '';
  String seguromin = apolices[0].tiposeguro;

  void coberturaMaior() {
    print(
        '-----------------Maior valor cobertura de Seguro----------------------');
    //MAIOR ------------------------------------
    tiposeguros.where((j) => j.tiposeguro != null).forEach((j) => {
          max = 0.0,
          min = apolices[0].valoranual,
          seguro = '',
          seguromin = apolices[0].tiposeguro,
          print(
            'O seguro de ${j.tiposeguro}:',
          ),
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
              .where((e) => e.cobertura == max && e.tiposeguro == seguro)
              .forEach((e) => print(
                    ''' Maior cobertura...
      Tipo de Seguro: ${e.tiposeguro}
      Nome da Apólice: ${e.nomeapolice}
      Cobertura: ${e.cobertura}\n''',
                  )),
        });
  }

  void coberturaMenor() {
    print(
        '-----------------Menor valor cobertura de Seguro----------------------');
    tiposeguros.where((j) => j.tiposeguro != null).forEach((j) => {
          max = 0.0,
          min = apolices[0].valoranual,
          seguro = '',
          seguromin = apolices[0].tiposeguro,
          print(
            'O seguro de ${j.tiposeguro}:',
          ),
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
              .where((e) => e.cobertura == min && e.tiposeguro == seguromin)
              .forEach((e) => print(
                    '''Menor cobertura...
      Tipo de Seguro: ${e.tiposeguro}
      Nome da Apólice: ${e.nomeapolice}
      Cobertura: ${e.cobertura}\n''',
                  )),
          print('-----------------------------------------------------')
        });
  }
}

class TipoSeguradora {
  //Para cada Seguradora-----------------------------------------
  double max = 0.0;
  double min = apolices[0].valoranual;
  String seguradora = '';
  String seguradoramin = apolices[0].nomeseguradora;

  void vAnualMaior() {
    print(
        '-----------------Maior valor anual do Tipo de Seguradora----------------------');
    // maior valor anual ------------------------------------
    seguradoras.where((j) => j.nomeseguradora != null).forEach((j) => {
          max = 0.0,
          min = apolices[0].valoranual,
          seguradora = '',
          seguradoramin = apolices[0].nomeseguradora,
          print(
            'A seguradora ${j.nomeseguradora}:',
          ),
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
              .where(
                  (e) => e.valoranual == max && e.nomeseguradora == seguradora)
              .forEach((e) => print(
                    ''' Maior valor anual...
      Seguradora: ${e.nomeseguradora}
      Nome da Apólice: ${e.nomeapolice}
      Valor Anual: ${e.valoranual}\n''',
                  ))
        });
    print(
        '-----------------Menor valor anual do Tipo de Seguradora----------------------');
    // menor valor anual ------------------------------------
    seguradoras.where((j) => j.nomeseguradora != null).forEach((j) => {
          max = 0.0,
          min = apolices[0].valoranual,
          seguradora = '',
          seguradoramin = apolices[0].nomeseguradora,
          print(
            'A seguradora ${j.nomeseguradora}:',
          ),
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
                  e.valoranual == min && e.nomeseguradora == seguradoramin)
              .forEach((e) => print(
                    '''Menor valor anual...
      Seguradora: ${e.nomeseguradora}
      Nome da Apólice: ${e.nomeapolice}
      Valor Anual: ${e.valoranual}\n''',
                  ))
        });
    print('-----------------------------------------------------');
  }

  void vAnualMenor() {}

  void coberturaMaior() {
    print(
        '-----------------Maior valor cobertura do Tipo de Seguradora----------------------');
    //maior cobertura --------------------------------------------------
    seguradoras.where((j) => j.nomeseguradora != null).forEach((j) => {
          max = 0.0,
          min = apolices[0].valoranual,
          seguradora = '',
          seguradoramin = apolices[0].nomeseguradora,
          print(
            'A seguradora ${j.nomeseguradora}:',
          ),
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
              .where(
                  (e) => e.cobertura == max && e.nomeseguradora == seguradora)
              .forEach((e) => print(
                    ''' Maior cobertura...
      Seguradora: ${e.nomeseguradora}
      Nome da Apólice: ${e.nomeapolice}
      Cobertura: ${e.cobertura}\n''',
                  ))
        });
    print(
        '-----------------Menor valor cobertura do Tipo de Seguradora----------------------');
    //menor cobertura --------------------------------------------------
    seguradoras.where((j) => j.nomeseguradora != null).forEach((j) => {
          max = 0.0,
          min = apolices[0].valoranual,
          seguradora = '',
          seguradoramin = apolices[0].nomeseguradora,
          print(
            'A seguradora ${j.nomeseguradora}:',
          ),
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
                  e.cobertura == min && e.nomeseguradora == seguradoramin)
              .forEach((e) => print(
                    '''Menor cobertura...
      Seguradora: ${e.nomeseguradora}
      Nome da Apólice: ${e.nomeapolice}
      Cobertura: ${e.cobertura}\n''',
                  )),
        });
    print('-----------------------------------------------------');
  }

  void coberturaMenor() {}
}

void totalCoberturaValorAnual() {
  seguradoras.where((j) => j.nomeseguradora != null).forEach((j) {
    double sumcobertura = 0;
    double sumvaloranual = 0;
    apolices
        .where(
      (e) => e.active == true && e.nomeseguradora == j.nomeseguradora,
    )
        .forEach((e) {
      sumcobertura += e.cobertura;
      sumvaloranual += e.valoranual;
    });
    print('\n-----------------${j.nomeseguradora}----------------------');
    print(
      'O total valor de cobertura da seguradora é: $sumcobertura€\n',
    );
    print(
      'O total de valor anual pela seguradora é: $sumvaloranual€',
    );
    print('---------------------------------------------');
  });
}
