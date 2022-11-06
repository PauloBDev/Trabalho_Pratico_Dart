import 'package:trabalho1/tiposeguros.dart';
import 'package:trabalho1/tomadores.dart';

class Apolices extends Tomador {
  String? nomeapolice;
  double? cobertura;
  double? valoranual;
  double? duracao;
  bool? active;

  Apolices({
    nomeseguradora,
    nometomador,
    muradatomador,
    idadetomador,
    nomeseguro,
    tiposeguro,
    this.cobertura,
    this.valoranual,
    this.nomeapolice,
    this.duracao,
    this.active,
  }) : super(
          nomeseguradora: nomeseguradora,
          muradatomador: muradatomador,
          idadetomador: idadetomador,
          nometomador: nometomador,
          nomeseguro: nomeseguro,
          tiposeguro: tiposeguro,
        );

  @override
  String toString() {
    return '''\n
    Apolice: 
      Seguradora: $nomeseguradora
      Tomador: $nometomador
      Nome do Seguro: $nomeseguro
      Tipo de Seguro: $tiposeguro
      Nome da Apolice: $nomeapolice
      Cobertura: $cobertura
      Valor Anual: $valoranual
      Duração: $duracao ano(s)''';
  }
}
