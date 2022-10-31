import 'dart:collection';

class Seguradora {
  int ano = 0;
  String nomeSeguradora = "";
  String muradaSeguradora = "";
  int anoDeOrigem = 0;

  final Map<int, String> seguradora1 = HashMap();
  final primseguradora = {
    1: 2022,
    2: 'Seguradora1',
    3: 'murada da seguradora1',
    4: 1994
  };
  final Map<int, String> seguradora2 = HashMap();
  final segseguradora = {
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

  final Map<int, String> seguro1 = HashMap();
  final primseguro = {};

  final Map<int, String> seguro2 = HashMap();
  final segseguro = {};
}

class Apolices extends TiposSeguros {
  String nomeapolice = "";
  int nascencapolice = 0;
  double duracao = 0;
  bool apoliceapolices = true;

  final Map<int, String> apolice1 = HashMap();
  final primapolice = {};

  final Map<int, String> apolice2 = HashMap();
  final segapolice = {};
}

class Tomador extends Seguradora {
  int anotomador = 0;
  String nomeTomador = "";
  String muradaTomador = "";

  final Map<int, String> tomador1 = HashMap();
  final primtomador = {};

  final Map<int, String> tomador2 = HashMap();
  final segtomador = {};
}

class Segurado extends Tomador {
  int anosegurado = 0;
  String nomesegurado = "";
  String tiposegurado = "";

  final Map<int, String> segurado1 = HashMap();
  final primsegurado = {};

  final Map<int, String> segurado2 = HashMap();
  final segsegurado = {};
}
