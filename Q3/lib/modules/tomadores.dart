import 'package:trabalho1/exceptions/allowed_age.dart';
import 'package:trabalho1/modules/tiposeguros.dart';

import 'apolices.dart';

class Tomador extends TipoDeSeguro {
  String? nometomador;
  String? muradatomador;
  int? idadetomador;
  String? nomesegurado;
  String? tiposegurado;

  Tomador({
    nomeseguradora,
    nomeseguro,
    tiposeguro,
    this.nometomador,
    this.muradatomador,
    this.idadetomador,
    this.nomesegurado,
    this.tiposegurado,
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

void add(Tomador tomadores) {
  if (tomadores.idadetomador! < 18) {
    throw AllowedAgeException('data/adicionar.dart');
  }
}
