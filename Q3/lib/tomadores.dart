import 'apolices.dart';

class Tomador extends Apolices {
  String? nometomador;
  String? muradatomador;
  int? idade;

  Tomador({
    nomeseguradora,
    nomeapolice,
    valorpremio,
    active,
    this.nometomador,
    this.muradatomador,
    this.idade,
  }) : super(
          nomeseguradora: nomeseguradora,
          nomeapolice: nomeapolice,
          valorpremio: valorpremio,
          active: active,
        );
  @override
  String toString() {
    return '''\n
    Apolice: 
      Seguradora: $nomeseguradora
      Apólice: $nomeapolice
      Nome: $nometomador
      Murada: $muradatomador 
      Idade: $idade''';
  }
}
