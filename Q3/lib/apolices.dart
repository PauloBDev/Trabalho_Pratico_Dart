import 'seguradoras.dart';

class Apolices extends Seguradora {
  String? nomeapolice;
  String? tipo;
  int? valorpremio;
  int? duracao;
  bool? active;

  Apolices({
    nomeseguradora,
    this.nomeapolice,
    this.tipo,
    this.valorpremio,
    this.duracao,
    this.active,
  }) : super(nomeseguradora: nomeseguradora);

  @override
  String toString() {
    return '''\n
    Apolice: 
      Seguradora: $nomeseguradora
      Nome: $nomeapolice
      Tipo: $tipo 
      Valor Prémio: $valorpremio
      Duração: $duracao ano(s)''';
  }
}
