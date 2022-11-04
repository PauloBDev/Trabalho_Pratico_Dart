import 'tomadores.dart';

class Segurado extends Tomador {
  String? nomesegurado;
  int? tiposegurado;

  Segurado({
    nometomador,
    this.nomesegurado,
    this.tiposegurado,
  }) : super(nometomador: nometomador);
  @override
  String toString() {
    return '''\n
    Apolice: 
      Tomador: $nometomador
      Tipo de Segurado: $tiposegurado
      Nome do Segurado: $nomesegurado''';
  }
}
