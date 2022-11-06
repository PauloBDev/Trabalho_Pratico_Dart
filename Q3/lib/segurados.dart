import 'tomadores.dart';

class Segurado extends Tomador {
  String? nomesegurado;
  String? tiposegurado;

  Segurado({
    nometomador,
    this.nomesegurado,
    this.tiposegurado,
  }) : super(nometomador: nometomador);
  @override
  String toString() {
    return '''Segurado:
      Tomador: $nometomador
      Tipo de Segurado: $tiposegurado
      Nome do Segurado: $nomesegurado''';
  }
}
