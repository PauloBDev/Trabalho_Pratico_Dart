import 'package:trabalho1/modules/seguradoras.dart';

import 'seguradoras.dart';

class TipoDeSeguro extends Seguradora {
  String? nomeseguro;
  String? tiposeguro;

  TipoDeSeguro({
    nomeseguradora,
    this.nomeseguro,
    this.tiposeguro,
  }) : super(
          nomeseguradora: nomeseguradora,
        );
  @override
  String toString() {
    return '''Tipo de seguro:
      Seguradora: $nomeseguradora
      Nome: $nomeseguro
      Tipo de Seguro: $tiposeguro''';
  }
}
