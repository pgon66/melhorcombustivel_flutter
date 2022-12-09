import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:melhor_combustivel/screens/result.dart';
import 'package:melhor_combustivel/widgets/button.widget.dart';
import 'package:melhor_combustivel/widgets/header.widget.dart';
import 'package:melhor_combustivel/widgets/input.widget.dart';
import 'package:melhor_combustivel/widgets/texts.widget.dart';

// Tela inicial do aplicativo.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScr createState() => HomeScr();
}

class HomeScr extends State<HomeScreen> {
  final _ethanolCons = MoneyMaskedTextController();     // Controller que recebe o valor do Etanol.
  final _gasolineCons = MoneyMaskedTextController();    // Controller que recebe o valor da Gasolina.
  final _ethanolValue = MoneyMaskedTextController();    // Controller que recebe o consumo no Etanol.
  final _gasolineValue = MoneyMaskedTextController();   // Controller que recebe o consumo na Gasolina.

  // Faz o cálculo e inicia a tela de resultados.
  // ignore: non_constant_identifier_names
  void Calcular() {
    setState(() {
      double ethanolValue = double.parse(_ethanolValue.text.replaceAll(RegExp(r'[,.]'), '')) / 100;     // Transforma o valor do Etanol em double.
      double gasolineValue = double.parse(_gasolineValue.text.replaceAll(RegExp(r'[,.]'), '')) / 100;   // Transforma o valor da Gasolina em double.
      double ethanolCons = double.parse(_ethanolCons.text.replaceAll(RegExp(r'[,.]'), '')) / 100;       // Transforma o consumo do Etanol em double.
      double gasolineCons = double.parse(_gasolineCons.text.replaceAll(RegExp(r'[,.]'), '')) / 100;     // Transforma o consumo da Gasolina em double.
      double spentEthanol = (ethanolValue / ethanolCons);                                               // Gasto com Etanol.
      double spentGasoline = (gasolineValue / gasolineCons);                                            // Gasto com Gasolina.
      double ethanolAndGasolineRatio = (ethanolValue / gasolineValue) * 100;                            // Relação entre o valor do Etanol e da Gasolina.
      String bestChoice;                                                                                // Melhor opção para se abastecer.
      double economy;                                                                                   // Valor economizado por litro.

      // Verifica e define o valor economizado.
      if (spentGasoline < spentEthanol) {
        economy = spentEthanol - spentGasoline;
      } else {
        economy = spentGasoline - spentEthanol;
      }

      // Verificar e informa qual a melhor opção.
      if (ethanolAndGasolineRatio >= 70) {
        bestChoice = "ABASTEÇA COM GASOLINA";
      } else {
        bestChoice = "ABASTEÇA COM ETANOL";
      }

      // Passa todos os valores para a próxima tela.
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ResultScreen(
                    ethanolValue: ethanolValue,                       // Valor do Etanol.
                    gasolineValue: gasolineValue,                     // Valor da Gasolina.
                    ethanolCons: ethanolCons,                         // Consumo no Etanol.
                    gasolineCons: gasolineCons,                       // Consumo na Gasolina.
                    spentEthanol: spentEthanol,                       // Gasto com Etanol.
                    spentGasoline: spentGasoline,                     // Gasto com Gasolina.
                    economy: economy,                                 // Valor economizado por litro.
                    bestChoice: bestChoice,                           // Melhor combustível para abastecer.
                    ethanolAndGasolineRatio: ethanolAndGasolineRatio, // Relação entre os combustíveis.
                  )));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Header(),                                            // Este widget é responsável pelo cabeçalho, aqui se encontram as imagens e os espaçamentos.

          TitleRed(label: "INFORME O CONSUMO"),                // Este widget é responsável por apresentar um título na tela.
          const SizedBox(height: 7),                           // Espaçamento entre os widgets.

          Subtitle(label: "Consumo no Etanol"),                // Este widget é responsável por apresentar um subtítulo na tela.
          const SizedBox(height: 5),                           // Espaçamento entre os widgets.
          InputTextConsumption(ctrl: _ethanolCons),            // Este widget é responsável por apresentar um input.
          const SizedBox(height: 5),                           // Espaçamento entre os widgets.

          Subtitle(label: "Consumo na Gasolina"),              // Este widget é responsável por apresentar um subtítulo na tela.
          InputTextConsumption(ctrl: _gasolineCons),           // Este widget é responsável por apresentar um input.
          const SizedBox(height: 10),                          // Espaçamento entre os widgets.

          TitleRed(label: "INFORME O VALOR DO COMBUSTÍVEL"),   // Este widget é responsável por apresentar um título na tela.
          const SizedBox(height: 7,),                          // Espaçamento entre os widgets.

          Subtitle(label: "Valor do Etanol"),                  // Este widget é responsável por apresentar um subtítulo na tela.
          InputTextFuel(ctrl: _ethanolValue),                  // Este widget é responsável por apresentar um input.
          const SizedBox(height: 5),                           // Espaçamento entre os widgets.

          Subtitle(label: "Valor da Gasolina"),                // Este widget é responsável por apresentar um subtítulo na tela.
          InputTextFuel(ctrl: _gasolineValue),                 // Este widget é responsável por apresentar um input.

          ButtonCalculate(label: "CALCULAR", func: Calcular,), // Este widget é responsável por apresentar o botão de calcular.
        ],
      ),
    );
  }
}
