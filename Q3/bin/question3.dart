import 'dart:io';
import 'package:trabalho1/modules/seguradoras.dart';
import 'package:trabalho1/data/metodos.dart';
import 'package:trabalho1/data/lista_seguradores.dart';
import 'package:trabalho1/data/adicionar.dart';
import 'package:trabalho1/data/remover.dart';

void main() {
  //criação de um default com cascade notation
  Seguradora defaulted = Seguradora();
  defaulted
    ..nomeseguradora = 'default nome seguradora'
    ..muradaseguradora = 'default murada seguradora'
    ..ano = 1111;

  //declaração de variaveis para uso dos menus
  int menuprincipal = 0;
  int detalhes = 0;
  int analise = 0;
  int adicionar = 0;
  int remover = 0;

  do {
    //pushar o menu
    menuPrincipal();
    //ler o numero escolhido
    menuprincipal = int.parse(stdin.readLineSync()!); // ler o número escrito
    print("\n");
    //case
    switch (menuprincipal) {
      //numero de apolices ativas e inativas
      case 1:
        //sub-menu para poder escolher o que quer ver das diferentes areas
        do {
          menuDetalhes();
          detalhes = int.parse(stdin.readLineSync()!);
          print('\n');
          switch (detalhes) {
            //mostrar as seguradoras
            case 1:
              seguradoras.forEach((e) => print(e.toString()));
              break;
            //mostrar as tipos de seguros presentes
            case 2:
              tiposeguros.forEach((e) => print(e.toString()));
              break;
            //mostrar as tomadores
            case 3:
              tomadores.forEach((e) => print(e.toString()));
              break;
            //mostrar as apólices
            case 4:
              apolices.forEach((e) => print(e.toString()));
              break;
            //mostrar as segurados
            case 5:
              tomadores.forEach((e) => print(
                    '''Segurado: ${e.nomesegurado}
      Tomador: ${e.nometomador}
      Tipo de segurado: ${e.tiposegurado}
            ''',
                  ));
              break;

            //voltar atras
            case 6:
              print("\n");
              break;
            //escolha errada
            default:
              print('Invalid choise! Please try again.');
              break;
          }
        } while (detalhes != 6);
        break;

      //caso 2 do menu principal seguro mais caro e mais barato
      case 2:
        //-----------------------Seguro mais caro---------------------
        seguroMaisCaro();
        //-----------------------Seguro mais barato---------------------

        seguroMaisBarato();
        break;

      //caso 3 do menu principal
      case 3:
        //--------------------------media anual por seguro----------------------
        mediaAnualSeguro();
        break;
      case 4:
        //-----------------------apólice activas e inativas-------------------
        print('Apólices ativas:\n');
        apolices.where((e) => e.active == true).forEach((e) => print('''
      ${e.toString()}\n'''));
        print('Apólices inativas:\n');
        apolices.where((e) => e.active == false).forEach((e) => print('''
      ${e.toString()}\n'''));
        break;
      case 5:
        //-----------------------apolices por tipo-------------------
        tipoApolices();
        break;

      case 6:
        //--------------------------apólices por tomador----------------------
        apolicesTomador();
        break;

      case 7:
        do {
          //---------------------------Sub-menu analise--------------------
          menuAnalise();
          analise = int.parse(stdin.readLineSync()!); // ler o número escrito
          print("\n");
          //case
          switch (analise) {
            case 1:
              //----------------------maior e menor cobertura-----------------
              //---------------------------maior cobertura--------------------
              Cobertura().maiorCobertura();
              //------------------------menor cobertura------------------------
              Cobertura().menorCobertura();
              break;

            case 2:
              //---------------------maior e menor valor anual--------------------
              //----------------------maior valor anual-----------------
              ValorAnual().maiorValorAnual();

              //---------------------------menor valor anual--------------------
              ValorAnual().menorValorAnual();
              break;
            case 3:
              //---------------------------Para cade tipo de seguro--------------------

              // valor anual ------------------------------------
              //MAIOR ------------------------------------
              TipoSeguroVAnual().vAnualMaior();
              // MENOR -------------------------------------
              TipoSeguroVAnual().vAnualMenor();
              //cobertura--------------------------------
              //MAIOR ------------------------------------
              TipoSeguroCobertura().coberturaMaior();
              //MENOR-----------------------------------------
              TipoSeguroCobertura().coberturaMenor();
              break;

            case 4:
              //Para cada Seguradora-----------------------------------------
              // valor anual ------------------------------------
              //MAIOR ------------------------------------
              TipoSeguradora().vAnualMaior();
              // MENOR -------------------------------------
              TipoSeguradora().vAnualMenor();
              //cobertura--------------------------------
              //MAIOR ------------------------------------
              TipoSeguradora().coberturaMaior();
              //MENOR-----------------------------------------
              TipoSeguradora().coberturaMenor();
              break;
            case 5:
              //---------------------total cobertura e valor anual---------------
              totalCoberturaValorAnual();
              break;
            case 6:
              print('\n');
              break;
            default:
              print('Invalid choise! Please try again.');
              break;
          }
        } while (analise != 6);
        break;
      //quem tem a apolices, nome, idade, murada
      case 8:
        //---------------------------sub-menu adicionar--------------------
        do {
          //pushar o menu
          menuAdicionar();
          //ler o numero escolhido
          adicionar = int.parse(stdin.readLineSync()!); // ler o número escrito
          print("\n");
          //case
          switch (adicionar) {
            //numero de apolices ativas e inativas
            case 1:
              //---------------------------adicionar seguradora--------------------
              Adicionar().adicionarSeguradora();
              break;
            case 2:
              //---------------------adicionar tipos de seguro--------------------
              Adicionar().adicionarTipoSeguro();
              break;
            case 3:
              //---------------------------adicionar tomador--------------------
              Adicionar().adicionarTomador();
              break;
            case 4:
              //---------------------------adicionar apolices--------------------
              Adicionar().adicionarApolices();
              break;
            case 5:
              print('\n');
              break;
            default:
              print('Invalid choise! Please try again.');
              break;
          }
        } while (adicionar != 5);
        break;
      case 9:
        do {
          menuRemover();

          remover = int.parse(stdin.readLineSync()!);
          print('\n');

          switch (remover) {
            case 1:
              Remover().removerSeguradora();
              break;
            case 2:
              Remover().removerTipodeSeguro();
              break;
            case 3:
              print('\n');
              break;
          }
        } while (remover != 3);
        break;
      //exit
      case 0:
        print('                  Have a Good Day!');
        print("\n");
        break;
      //escolha errada
      default:
        print('Invalid choise! Please try again.');
        break;
    }
    //parar se for escolhido 9
  } while (menuprincipal != 0);
}
