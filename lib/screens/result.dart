// ignore: import_of_legacy_library_into_null_safe
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:melhor_combustivel/widgets/button.widget.dart';
import 'package:melhor_combustivel/widgets/header.widget.dart';
import 'package:melhor_combustivel/widgets/texts.widget.dart';

// ignore: must_be_immutable
class ResultScreen extends StatefulWidget {

  double ethanolValue, gasolineValue;   // Valor do Combustível.
  double ethanolCons, gasolineCons;     // Consumo do veículo.
  double ethanolAndGasolineRatio;       // Relação entre os combustíveis.
  double spentEthanol, spentGasoline;   // Gasto com cada combustível.
  var bestChoice = "";                  // Melhor opção entre os dois combustíveis.
  double economy;                       // Valor economizado.

  // Responsável por receber os valores quando a classe é chamada.
  ResultScreen(
      {super.key, required this.ethanolValue,   // Valor do Etanol.
      required this.gasolineValue,              // Valor da Gasolina.
      required this.ethanolCons,                // Consumo no Etanol.
      required this.gasolineCons,               // Consumo na Gasolina.
      required this.spentEthanol,               // Gasto no Etanol.
      required this.spentGasoline,              // Gasto na Gasolina.
      required this.economy,                    // Valor economizado.
      required this.bestChoice,                 // Melhor opção entre os dois combustíveis.
      required this.ethanolAndGasolineRatio});  // Relação entre os combustíveis.

  @override
  ResultScr createState() => ResultScr();
}

class ResultScr extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,              // Cor do fundo da tela.
      body: 
      ListView(
        children: [

          // Este widget é responsável pelo cabeçalho, aqui se encontram as imagens e os espaçamentos.
          HeaderBanner(),

          // Este widget é responsável por apresentar a imagem acima do Container, ou seja, o picotado do Cupom Fiscal.
          Container(
            margin: const EdgeInsets.only(left: 23, right: 23),     // Espaçamento do Container.
            child: Image.asset("assets/images/edge.png"),           // Imagem a ser usada.
          ),
          
          // Este widget é responsável pelo Container/Cupom Fiscal.
          Container(
            height: 376,                                            // Tamanho do Container.
            margin: const EdgeInsets.only(left: 23, right: 23),     // Espaçamento do Container.
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),                   // Cor do fundo.
                // ignore: prefer_const_constructors
                borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(20),          // Cantos Redondos.
                    bottomRight: const Radius.elliptical(20, 20))), // Cantos Redondos.
            
            child: Column(
              children: [
                
                // Este widget é responsável pelo cabeçalho dentro do Cupom.
                const ResultHeader(),

                // Este widget é responsável pelo título no meio da tela, "RESULTADO FINAL".
                ResultsTitles(
                  label: "RESULTADO FINAL",                     // Informa um título.
                ),

                // Este widget é responsável por apresentar os valores informados pelo usuário.
                ResultValue(
                    title: "VALOR DO COMBUSTÍVEL POR LITRO ",   // Informa um título.
                    labelEthanol: "1 LITRO DE ETANOL",          // Informa um título.
                    labelGasoline: "1 LITRO DE GASOLINA",       // Informa um título.
                    valueEthanol: widget.ethanolValue,          // Recebe o valor do Etanol.
                    valueGasoline: widget.gasolineValue),       // Recebe o valor da Gasolina.
                
                // Este widget é responsável por apresentar o consumo informado pelo usuário.
                ResultEconomy(
                    title: "CONSUMO INFORMADO - KM POR LITRO ", // Informa um título.
                    labelEthanol: "CONSUMO NO ETANOL",          // Informa um título.
                    labelGasoline: "CONSUMO NA GASOLINA",       // Informa um título.
                    valueEthanol: widget.ethanolCons,           // Recebe o consumo no Etanol.
                    valueGasoline: widget.gasolineCons),        // Recebe o consumo na Gasolina.
                
                // Este widget é responsável por apresentar o resultado dos cálculo em relação aos gastos.
                ExpenseRatio(
                  value: widget.ethanolAndGasolineRatio,        // Recebe a relação entre o Etanol e a Gasolina.
                  valueEthanol: widget.spentEthanol,            // Recebe o gasto com Etanol.
                  valueGasoline: widget.spentGasoline,          // Recebe o gasto com Gasolina.
                ),

                // Este widget é responsável por apresentar qual combustível é mais vantajoso.
                ResultsTitles(label: widget.bestChoice),        // Recebe a frase que informa a melhor opção para se abastecer.

                // Este widget é responsável por apresentar o valor economizado pelo usuário.
                AutoSizeText(                                   // Torna o texto responsivo.
                  'ECONOMIA DE R\$ ${widget.economy.toStringAsFixed(2)} POR LITRO',
                  maxLines: 1,                                  // Limita o texto a uma linha, para evitar quebras.
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontFamily: "JetJane",                      // Fonte do texto.
                  ),
                ),
                const SizedBox(height: 10,), // Espaçamento entre os widgets.
              ],
            ),
          ),
                  ButtonBack(label: "VOLTAR"), // Este widget é responsável por apresentar o botão de voltar a página inicial.
        ],
      ),
    );
  }
}
