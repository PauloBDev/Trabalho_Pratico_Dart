import 'dart:collection';

class Seguradora {
  int ano = 0;
  String nomeSeguradora = "";
  String muradaSeguradora = "";
  int anoDeOrigem = 0;

  final Map<int, String> seguradora1 = HashMap();
  final eguradora1 = {
    1: 2022,
    2: 'Seguradora1',
    3: 'murada da seguradora1',
    4: 1994
  };
  final Map<int, String> seguradora2 = HashMap();
  final eguradora2 = {
    1: 2021,
    2: 'Seguradora2',
    3: 'murada da seguradora2',
    4: 1998
  };
}

class TiposSeguros extends Seguradora {
  String nomeseguro = "";
  String tiposeguro = "";
  double preco = 0;
  double valoranual = 0;
}

class Apolices extends TiposSeguros {
  String nomeapolice = "";
  int nascencapolice = 0;
  double duracao = 0;
  bool apoliceapolices = true;
}

class Tomador extends Seguradora {
  int anotomador = 0;
  String nomeTomador = "";
  String muradaTomador = "";
}

class Segurado extends Tomador {
  int anosegurado = 0;
  String nomesegurado = "";
  String tiposegurado = "";
}

class testedemapa {
  Map<int, String> seguradora = HashMap();
}
