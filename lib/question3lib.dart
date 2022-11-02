import 'dart:collection';

class seguradora {
  String? nomeseguradora;
  String? muradaseguradora;
  int? ano;

  seguradora({this.nomeseguradora, this.muradaseguradora, this.ano});

  @override
  String toString() {
    return '''\n
    Apolice: 
      Nome: $nomeseguradora
      Murada: $muradaseguradora 
      Criada em: $ano\n''';
  }
}

class Apolices extends seguradora {
  String? nomeapolice;
  String? tipo;
  int? valorpremio;
  int? duracao;
  int? active;

  Apolices(
      {nomeseguradora,
      this.nomeapolice,
      this.tipo,
      this.valorpremio,
      this.duracao,
      this.active})
      : super(nomeseguradora: nomeseguradora);

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
            active: active);
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

class TipoDeSeguro extends Apolices {
  String? nomeseguro;
  int? tiposeguro;
  int? preco;
  int? valoranual;

  TipoDeSeguro(
      {nomeseguradora,
      nomeapolice,
      active,
      this.nomeseguro,
      this.tiposeguro,
      this.preco,
      this.valoranual})
      : super(
            nomeseguradora: nomeseguradora,
            nomeapolice: nomeapolice,
            active: active);
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
