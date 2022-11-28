import 'dart:io';
import 'package:trabalho1/modules/seguradoras.dart';
import 'package:trabalho1/modules/apolices.dart';
import 'package:trabalho1/modules/tomadores.dart';
import 'package:trabalho1/modules/tiposeguros.dart';
import 'package:trabalho1/data/lista_seguradores.dart';

import '../exceptions/allowed_age.dart';

class Remover {
  void removerSeguradora() {
    print('Nome da Seguradora:');
    String? snome = stdin.readLineSync();
    if (apolices.any((e) => e.nomeseguradora == snome)) {
      print(
          'Não é possivel remover $snome porque existe apólices ainda ativas.');
    } else {
      seguradoras.removeWhere((e) => e.nomeseguradora == snome);
      print('A seguradora $snome foi removida!');
    }
  }

  void removerTipodeSeguro() {
    print('Nome do Tipo de Seguro:');
    String? nomeTipoSeguro = stdin.readLineSync();
    if (apolices.any((e) => e.nomeseguro == nomeTipoSeguro)) {
      print(
          'Não é possivel remover $nomeTipoSeguro porque existe apólices ainda ativas.');
    } else {
      tiposeguros.removeWhere((e) => e.nomeseguro == nomeTipoSeguro);
      print('O tipo de seguro $nomeTipoSeguro foi removido!');
    }
  }
}
