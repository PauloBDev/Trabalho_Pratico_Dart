import 'dart:io';
import 'package:trabalho1/lista_seguradores.dart';
import 'package:trabalho1/seguradoras.dart';
import 'package:trabalho1/apolices.dart';
import 'package:trabalho1/tomadores.dart';
import 'package:trabalho1/tiposeguros.dart';
import 'package:trabalho1/metodos.dart';

void menuPrincipal() {
  //menu
  print('\n-------------------Surpresas Existem!!----------------------- ');
  print('\n1. Detalhes sobre as várias areas.');
  print('2. Qual é o seguro mais barato e o mais caro?');
  print('3. Quanto é a média dos valores anuais?');
  print('4. Apólices activas e Inativas');
  print('5. Apólices por tipo.');
  print('6. Apólices por tomador');
  print('7. Análise das coberturas e valor anual');
  print('8. Adicionar elementos.');
  print('9. Exit.\n');
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
  print('5. <-- Voltar.\n');
}

void seguroMaisCaro() {
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

void seguroMaisBarato() {
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

void mediaAnualSeguro() {
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

class Cobertura {
  double max = 0.0;
  double min = apolices[0].valoranual;
  String seguro = '';
  String seguromin = apolices[0].nomeseguro;

  void maiorCobertura() {
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
              ''' Apolice com maior cobertura é...
              Tipo de Seguro: ${e.tiposeguro}
              Nome da Apolice: ${e.nomeapolice}
              Cobertura: ${e.cobertura}\n''',
            ));
  }

  void menorCobertura() {
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
              ''' Apolice com menor cobertura é...
              Tipo de Seguro: ${e.tiposeguro}
              Nome da Apolice: ${e.nomeapolice}
              Cobertura: ${e.cobertura}\n''',
            ));
  }
}

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

class ValorAnual {
  double max = 0.0;
  double min = apolices[0].valoranual;
  String seguro = '';
  String seguromin = apolices[0].tiposeguro;
  void maiorValorAnual() {
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

  void menorValorAnual() {
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
