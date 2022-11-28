import 'dart:io';
import 'package:trabalho1/modules/seguradoras.dart';
import 'package:trabalho1/modules/apolices.dart';
import 'package:trabalho1/modules/tomadores.dart';
import 'package:trabalho1/modules/tiposeguros.dart';
import 'package:trabalho1/data/lista_seguradores.dart';

import '../exceptions/allowed_age.dart';

class Adicionar {
  //---------------------------adicionar seguradora--------------------
  void adicionarSeguradora() {
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
  }

  void adicionarTipoSeguro() {
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
  }

  void adicionarTomador() {
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
    try {
      //tentativa de adicionar uma exception
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
    } on AllowedAgeException catch (e) {
      print(e.errorMessage());
    }
  }

  void adicionarApolices() {
    //---------------------------adicionar apolices--------------------
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
  }
}
