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
      Criada em: $ano\n
  ''';
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
    this.nometomador,
    this.muradatomador,
    this.idade,
  }) : super(
            nomeseguradora: nomeseguradora,
            nomeapolice: nomeapolice,
            valorpremio: valorpremio);
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
      this.nomeseguro,
      this.tiposeguro,
      this.preco,
      this.valoranual})
      : super(nomeseguradora: nomeseguradora, nomeapolice: nomeapolice);
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
  // String? _nomeapolice;
  // String? _tipo;
  // int? _valorpremio;
  // int? _duracao;
  // int? _active;

  // String get nomeapolice => this._nomeapolice!;
  // String get tipo => this._tipo!;
  // int get valorpremio => this._valorpremio!;
  // int get duracao => this._duracao!;
  // int get active => this._active!;

  // set nomeapolice(String nomeapolice) => this._nomeapolice = nomeapolice;
  // set tipo(String tipo) => this._tipo = tipo;
  // set valorpremio(int valorpremio) => this._valorpremio = valorpremio;
  // set duracao(int duracao) => this._duracao = duracao;
  // set active(int active) => this._active = active;

  // void displayapolice() {
  //   print("Nome: $_nomeapolice");
  //   print("Tipo: $_tipo");
  //   print("Valor prémio: $_valorpremio");
  //   print("Duração de: $duracao anos");
  //}
//}
// void creatingstuff() {
//   final Map<int, Object> apolices = HashMap();
//   final primapolice = {
//     1: "apolice1",
//     2: 1900,
//     3: 50,
//     4: true,
//   };

//   final segapolice = {
//     1: "apolice2",
//     2: 1950,
//     3: 100,
//     4: false,
//   };

//   apolices.addEntries(primapolice.entries);
//   apolices.addEntries(segapolice.entries);
//   print(apolices);
//   // if (apolices.containsValue(true)) {
//   //   print(primapolice);
//   // } else {
//   //   print(segapolice);
//   // }
// }

// class Seguradora {
//   // int ano = 0;
//   // String nomeSeguradora = "";
//   // String muradaSeguradora = "";
//   // int anoDeOrigem = 0;

//   final Map<int, String> seguradora1 = HashMap();
//   final primseguradora = {
//     1: 2022,
//     2: 'Seguradora1',
//     3: 'murada da seguradora1',
//     4: 1994,
//   };
//   final Map<int, String> seguradora2 = HashMap();
//   final segseguradora = {
//     1: 2021,
//     2: 'Seguradora2',
//     3: 'murada da seguradora2',
//     4: 1998,
//   };
// }

// class TiposSeguros extends Seguradora {
//   // String nomeseguro = "";
//   // String tiposeguro = "";
//   // double preco = 0;
//   // double valoranual = 0;

//   final Map<int, String> seguro1 = HashMap();
//   final primseguro = {
//     1: "Vida Longa!",
//     2: "Vida",
//     3: 20000,
//     4: 2000,
//   };

//   final Map<int, String> seguro2 = HashMap();
//   final segseguro = {
//     1: "Carro Protegido!",
//     2: "carro",
//     3: 10000,
//     4: 1000,
//   };
// }

// class Apolices extends TiposSeguros {
//   // String nomeapolice = "";
//   // int nascencapolice = 0;
//   // double duracao = 0;
//   // bool apoliceapolices = true;

//   final Map<int, String> apolice1 = HashMap();
//   final primapolice = {
//     1: "apolice1",
//     2: 1900,
//     3: 50,
//     4: true,
//   };

//   final Map<int, String> apolice2 = HashMap();
//   final segapolice = {
//     1: "apolice2",
//     2: 1950,
//     3: 100,
//     4: false,
//   };
// }

// class Tomador extends Seguradora {
//   // int anotomador = 0;
//   // String nomeTomador = "";
//   // String muradaTomador = "";

//   final Map<int, String> tomador1 = HashMap();
//   final primtomador = {
//     1: 1994,
//     2: "Paulo Bernardino",
//     3: "rua do Paulo",
//   };

//   final Map<int, String> tomador2 = HashMap();
//   final segtomador = {
//     1: 1996,
//     2: "Alexandre Machado",
//     3: "rua do Alexandre",
//   };
// }

// class Segurado extends Tomador {
//   // int anosegurado = 0;
//   // String nomesegurado = "";
//   // String tiposegurado = "";

//   final Map<int, String> segurado1 = HashMap();
//   final primsegurado = {
//     1: 2000,
//     2: "Ford 2000",
//     3: "carro",
//   };

//   final Map<int, String> segurado2 = HashMap();
//   final segsegurado = {
//     1: 2010,
//     2: "Apartamento",
//     3: "casa",
//   };
// }
