import 'dart:io';
import 'package:trabalho1/data/lista_seguradores.dart';

class Remover {
  // remover seguradoras
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

  //remover tipo de seguros
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
