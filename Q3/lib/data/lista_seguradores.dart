import 'package:trabalho1/modules/seguradoras.dart';
import 'package:trabalho1/modules/apolices.dart';
import 'package:trabalho1/modules/tomadores.dart';
import 'package:trabalho1/modules/tiposeguros.dart';

//lista das tipos de seguros

List seguradoras = [
  Seguradora(
    nomeseguradora: 'Allianz',
    muradaseguradora: "R. Mergunhos 154 R/C, 4410-389 Arcozelo",
    ano: 1890,
  ),
  Seguradora(
    nomeseguradora: 'Bradesco',
    muradaseguradora:
        " Av. Santos Dumont, 3581 - Manuel Dias Branco, Fortaleza",
    ano: 1943,
  )
];
//lista das tipos de seguros
List tiposeguros = [
  TipoDeSeguro(
    nomeseguradora: 'Allianz',
    nomeseguro: 'Vida Longa',
    tiposeguro: 'Vida',
  ),
  TipoDeSeguro(
    nomeseguradora: 'Allianz',
    nomeseguro: 'Automovel Seguro',
    tiposeguro: 'Auto',
  ),
  TipoDeSeguro(
    nomeseguradora: 'Allianz',
    nomeseguro: 'Casamentos felizes é o mais importante',
    tiposeguro: 'Patrimonial',
  ),
  TipoDeSeguro(
    nomeseguradora: 'Bradesco',
    nomeseguro: 'Casa é onde os sonhos estão',
    tiposeguro: 'Residencial',
  ),
  TipoDeSeguro(
    nomeseguradora: 'Bradesco',
    nomeseguro: 'Viagar faz bem',
    tiposeguro: 'Viagem',
  ),
  TipoDeSeguro(
    nomeseguradora: 'Bradesco',
    nomeseguro: 'Saúde para todos',
    tiposeguro: 'Saúde',
  )
];
//lista das tomadores e segurados
List tomadores = [
  Tomador(
    nomeseguradora: 'Allianz',
    nomeseguro: 'Vida Longa',
    tiposeguro: 'Vida',
    nometomador: 'Paulo Bernardino',
    muradatomador: 'Travessa do Paraíso',
    idadetomador: 29,
    nomesegurado: 'Paulo Bernardino',
    tiposegurado: 'Pessoal',
  ),
  Tomador(
    nomeseguradora: 'Allianz',
    nomeseguro: 'Automovel Seguro',
    tiposeguro: 'Auto',
    nometomador: 'Pedro Alves',
    muradatomador: 'Ermida de Nossa Senhora',
    idadetomador: 44,
    nomesegurado: 'Toyota 2000',
    tiposegurado: 'Carro',
  ),
  Tomador(
    nomeseguradora: 'Allianz',
    nomeseguro: 'Casamentos felizes é o mais importante',
    tiposeguro: 'Patrimonial',
    nometomador: 'Alexandre Machado',
    muradatomador: 'Rua dos Sete Céus',
    idadetomador: 74,
    nomesegurado: 'Alexandre Machado',
    tiposegurado: 'Pessoal',
  ),
  Tomador(
    nomeseguradora: 'Bradesco',
    nomeseguro: 'Casa é onde os sonhos estão',
    tiposeguro: 'Residencial',
    nometomador: 'Pedro Gonçalves',
    muradatomador: 'Beco do Belo',
    idadetomador: 20,
    nomesegurado: 'Apartamento 5D',
    tiposegurado: 'Casa',
  ),
  Tomador(
    nomeseguradora: 'Bradesco',
    nomeseguro: 'Viagar faz bem',
    tiposeguro: 'Viagem',
    nometomador: 'Paula Gomes',
    muradatomador: 'Rua do Açúcar',
    idadetomador: 18,
    nomesegurado: 'Paula Gomes',
    tiposegurado: 'Pessoal',
  ),
  Tomador(
    nomeseguradora: 'Bradesco',
    nomeseguro: 'Saúde para todos',
    tiposeguro: 'Saúde',
    nometomador: 'Ana Luis',
    muradatomador: 'Travessa da Amorosa',
    idadetomador: 33,
    nomesegurado: 'Ana Luis',
    tiposegurado: 'Pessoal',
  )
];
//lista das apólices
List apolices = [
  Apolices(
    nomeseguradora: 'Allianz',
    nometomador: 'Paulo Bernardino',
    muradatomador: 'Travessa do Paraíso',
    idadetomador: 29,
    nomeseguro: 'Vida Longa',
    tiposeguro: 'Vida',
    cobertura: 5005000.0,
    valoranual: 20000.0,
    nomeapolice: "Apólice de Vida Paulo Bernardino",
    duracao: 100,
    active: true,
  ),
  Apolices(
    nomeseguradora: 'Bradesco',
    nometomador: 'Pedro Alves',
    muradatomador: 'Ermida de Nossa Senhora',
    idadetomador: 44,
    nomeseguro: 'Automovel Seguro',
    tiposeguro: 'Auto',
    cobertura: 5000.0,
    valoranual: 400.23,
    nomeapolice: "Apólice de Carro Pedro Alves",
    duracao: 20,
    active: true,
  ),
  Apolices(
    nomeseguradora: 'Allianz',
    nometomador: 'Alexandre Machado',
    muradatomador: 'Rua dos Sete Céus',
    idadetomador: 74,
    nomeseguro: 'Casamentos felizes é o mais importante',
    tiposeguro: 'Patrimonial',
    cobertura: 40000.0,
    valoranual: 500.5,
    nomeapolice: "Apólice Patrimonial Alexandre Machado",
    duracao: 100,
    active: false,
  ),
  Apolices(
    nomeseguradora: 'Bradesco',
    nometomador: 'Pedro Gonçalves',
    muradatomador: 'Beco do Belo',
    idadetomador: 20,
    nomeseguro: 'Casa é onde os sonhos estão',
    tiposeguro: 'Residencial',
    cobertura: 60000.0,
    valoranual: 1013.6,
    nomeapolice: "Apólice Residencial Pedro Gonçalves",
    duracao: 40,
    active: false,
  ),
  Apolices(
    nomeseguradora: 'Allianz',
    nometomador: 'Paula Gomes',
    muradatomador: 'Rua do Açúcar',
    idadetomador: 18,
    nomeseguro: 'Viagar faz bem',
    tiposeguro: 'Viagem',
    cobertura: 2000.0,
    valoranual: 150.8,
    nomeapolice: "Apólice Viagem Paula Gomes",
    duracao: 1,
    active: true,
  ),
  Apolices(
    nomeseguradora: 'Bradesco',
    nometomador: 'Ana Luis',
    muradatomador: 'Travessa da Amorosa',
    idadetomador: 33,
    nomeseguro: 'Saúde para todos',
    tiposeguro: 'Saúde',
    cobertura: 10000.0,
    valoranual: 2010.2,
    nomeapolice: "Apólice Saúde Ana Luis",
    duracao: 1,
    active: true,
  ),
  Apolices(
    nomeseguradora: 'Bradesco',
    nometomador: 'Nadine Luis',
    muradatomador: 'Travessa da Saúde',
    idadetomador: 30,
    nomeseguro: 'Saúde para todos',
    tiposeguro: 'Saúde',
    cobertura: 20000.0,
    valoranual: 1010.2,
    nomeapolice: "Apólice Saúde Nadine Luis",
    duracao: 0.6,
    active: true,
  ),
];
