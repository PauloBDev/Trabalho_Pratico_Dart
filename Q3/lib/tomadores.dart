import 'package:trabalho1/tiposeguros.dart';

import 'apolices.dart';

class Tomador extends TipoDeSeguro {
  String? nometomador;
  String? muradatomador;
  int? idadetomador;

  Tomador({
    nomeseguradora,
    nomeseguro,
    tiposeguro,
    this.nometomador,
    this.muradatomador,
    this.idadetomador,
  }) : super(
          nomeseguradora: nomeseguradora,
          tiposeguro: tiposeguro,
          nomeseguro: nomeseguro,
        );
  @override
  String toString() {
    return '''Tomador:
      Seguradora: $nomeseguradora
      Tipo de Seguro: $tiposeguro
      Nome: $nometomador
      Murada: $muradatomador 
      Idade: $idadetomador''';
  }
}
