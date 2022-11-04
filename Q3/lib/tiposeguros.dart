import 'apolices.dart';

class TipoDeSeguro extends Apolices {
  String? nomeseguro;
  int? tiposeguro;
  int? preco;
  int? valoranual;

  TipoDeSeguro({
    nomeseguradora,
    nomeapolice,
    active,
    this.nomeseguro,
    this.tiposeguro,
    this.preco,
    this.valoranual,
  }) : super(
          nomeseguradora: nomeseguradora,
          nomeapolice: nomeapolice,
          active: active,
        );
  @override
  String toString() {
    return '''\n
    Apolice: 
      Seguradora: $nomeseguradora
      Apólice: $nomeapolice
      Nome: $nomeseguro
      Tipo de Seguro: $tiposeguro 
      Preço do Seguro: $preco
      Valor Anual: $valoranual''';
  }
}
