// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:auto_size_text/auto_size_text.dart';

// Títulos da página.
// ignore: must_be_immutable
class TitleRed extends StatelessWidget {
  var label = "";                                            // Texto exibido.

  TitleRed({super.key, required this.label});                // Recebe o texto a ser exibido.

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),                // Espaçamento do texto.
      child: AutoSizeText(                                    // Torna o texto responsivo.
        label,                                                // Recebe o título.
        maxLines: 1,                                          // Limita o texto a uma linha, para evitar quebras.
        style: const TextStyle(                               // Decoração, fonte e tamanho do texto.
          color: Color(0xFFC42A4B),                         // Cor do texto.
          fontSize: 15,                                       // Tamanho do texto.
          fontFamily: "InterBold",                            // Fonte do texto.
        ),
      ),
    );
  }
}

// Subtítulos da página.
// ignore: must_be_immutable
class Subtitle extends StatelessWidget {
  var label = "";                                                 // Texto exibido.

  Subtitle({super.key, required this.label});                     // Recebe o texto a ser exibido.

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),                    // Espaçamento do texto.
      child: AutoSizeText(                                        // Torna o texto responsivo.    
        label,                                                    // Recebe o título.
        maxLines: 1,                                              // Limita o texto a uma linha, para evitar quebras.
        style: const TextStyle(                                   // Decoração, fonte e tamanho do texto.
          color: Color(0xFF1E1E1E),                             // Cor do texto.
          fontSize: 15,                                           // Tamanho do texto.
          fontFamily: "InterBold",                                // Fonte do texto.
        ),
      ),
    );
  }
}

// Divisora dos textos.
class Div extends StatelessWidget {
  const Div({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),         // Espaçamento do texto.
      child: 
      const AutoSizeText(                                         // Torna o texto responsivo.                                                                     
        "---------------------------------------------------------------------------------------------",
        maxLines: 1,                                              // Limita o texto a uma linha, para evitar quebras.
        style: TextStyle(fontFamily: "JetJane", fontSize: 12),    // Decoração, fonte e tamanho do texto.
      ),
    );
  }
}

// Cabeçalho do Cupom Fiscal.
class ResultHeader extends StatelessWidget {
  
  const ResultHeader({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,         // Alinhamento do texto.
        crossAxisAlignment: CrossAxisAlignment.center,            // Alinhamento do texto.
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            // ignore: prefer_const_literals_to_create_immutables
            child: Column(children: [
              const SizedBox(height: 10),                         // Espaçamento entre os widgets.
              const AutoSizeText(                                 // Torna o texto responsivo
                'MELHOR COMBUSTÍVEL',                             // Texto exibido.
                maxLines: 1,                                      // Limita o texto a uma linha, para evitar quebras.
                style: TextStyle(                                 // Decoração do texto.
                  fontFamily: "JetJane",                          // Fonte do texto.
                ),
              ),
              const AutoSizeText(                                 // Torna o texto responsivo
                'ETANOL X GASOLINA',                              // Texto exibido.
                maxLines: 1,                                      // Limita o texto a uma linha, para evitar quebras.
                style: TextStyle(                                 // Decoração do texto.
                  fontFamily: "JetJane",                          // Fonte do texto.
                ),
              ),
            ]),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            // ignore: prefer_const_literals_to_create_immutables
            child: Column(children: [
              const SizedBox(height: 10,),                        // Espaçamento entre os widgets.
              const AutoSizeText(                                 // Torna o texto responsivo.
                '***************',                                // Texto exibido.
                maxLines: 1,                                      // Limita o texto a uma linha, para evitar quebras.
                style: TextStyle(                                 // Decoração do texto.
                  fontFamily: "JetJane",                          // Fonte do texto.
                ),
              ),
              const AutoSizeText(                                 // Torna o texto responsivo.
                'MC 2022 PR BR',                                  // Texto exibido.
                maxLines: 1,                                      // Limita o texto a uma linha, para evitar quebras.
                style: TextStyle(                                 // Decoração do texto.
                  fontFamily: "JetJane",                          // Fonte do texto.
                ),
              ),
              const AutoSizeText(                                 // Torna o texto responsivo.
                '***************',                                // Texto exibido.
                maxLines: 1,                                      // Limita o texto a uma linha, para evitar quebras.
                style: TextStyle(                                 // Decoração do texto.
                  fontFamily: "JetJane",                          // Fonte do texto.
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

// Cabeçalho dos resultados.
// ignore: must_be_immutable
class ResultsTitles extends StatelessWidget {
  var label = "";                                                         // Texto exibido.

  ResultsTitles({super.key, required this.label});                        // Recebe o texto a ser exibido.

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        children: [
          const Div(),                                                     // Divisoria dos textos.
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),            // Espaçamento do texto.
            child: AutoSizeText(                                           // Torna o texto responsivo.   
              label,                                                       // Recebe o título.
              maxLines: 1,                                                 // Limita o texto a uma linha, para evitar quebras.
              style: const TextStyle(fontFamily: "JetJane", fontSize: 20), // Decoração, fonte e tamanho do texto.
            ),
          ),
          const Div(),                                                     // Divisoria dos textos.
        ],
      ),
    );
  }
}

// Valores informados pelo usuário.
// ignore: must_be_immutable
class ResultValue extends StatelessWidget {
  var title = "";                                                         // Texto exibido.
  var labelEthanol, labelGasoline;                                        // Título do campo.
  double valueEthanol, valueGasoline;                                     // Valor do combustível.

  ResultValue(
      {super.key, required this.labelEthanol,                             // Recebe o título do campo.
      required this.labelGasoline,                                        // Recebe o título do campo.
      required this.title,                                                // Recebe o texto a ser exibido.
      required this.valueEthanol,                                         // Recebe o valor do Etanol.
      required this.valueGasoline});                                      // Recebe o valor da Gasolina.

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(children: [
        Container(
          alignment: Alignment.centerLeft,                                // Alinhamento.
          margin: const EdgeInsets.only(left: 10, right: 10),             // Espaçamento.
          child: AutoSizeText(                                            // Torna o texto responsivo.
            title,                                                        // Texto exibido.
            maxLines: 1,                                                  // Limita o texto a uma linha, para evitar quebras.
            style: const TextStyle(fontFamily: "JetJane"),                // Fonte utilizada.
          ),
        ),
        // ignore: avoid_unnecessary_containers
        Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,           // Alinhamento do texto.
              crossAxisAlignment: CrossAxisAlignment.center,              // Alinhamento do texto.
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),     // Espaçamento.
                  width: 180,                                             // Tamanho do Container.
                  alignment: Alignment.centerLeft,                        // Alinhamento do Container.
                  child: AutoSizeText(                                    // Torna o texto responsivo.
                    labelEthanol,                                         // Título do campo.
                    maxLines: 1,                                          // Limita o texto a uma linha, para evitar quebras.
                    style: const TextStyle(                               // Decoração do texto.
                      fontFamily: "JetJane",                              // Fonte do texto.
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),     // Espaçamento.
                  alignment: Alignment.centerRight,                       // Alinhamento.
                  child: AutoSizeText(                                    // Torna o texto responsivo.
                    'R\$$valueEthanol',                                   // Valor do Etanol.
                    maxLines: 1,                                          // Limita o texto a uma linha, para evitar quebras.
                    style: const TextStyle(                               // Decoração do texto.
                      fontFamily: "JetJane",                              // Fonte do texto.
                    ),
                  ),
                ),
              ]),
        ),
        // ignore: avoid_unnecessary_containers
        Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,           // Alinhamento do texto.
              crossAxisAlignment: CrossAxisAlignment.center,              // Alinhamento do texto.
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),     // Espaçamento.
                  width: 180,                                             // Tamanho do Container.
                  alignment: Alignment.centerLeft,                        // Alinhamento do Container.
                  child: AutoSizeText(                                    // Torna o texto responsivo.
                    labelGasoline,                                        // Título do campo.
                    maxLines: 1,                                          // Limita o texto a uma linha, para evitar quebras.
                    style: const TextStyle(                               // Decoração do texto.
                      fontFamily: "JetJane",                              // Fonte do texto.
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),     // Espaçamento.
                  alignment: Alignment.centerRight,                       // Alinhamento do texto.
                  child: AutoSizeText(                                    // Torna o texto responsivo.
                    'R\$$valueGasoline',                                  // Valor da Gasolina.
                    maxLines: 1,                                          // Limita o texto a uma linha, para evitar quebras.
                    style: const TextStyle(                               // Decoração do texto.
                      fontFamily: "JetJane",                              // Fonte do texto.
                    ),
                  ),
                ),
              ]),
        ),
        const Div(),                                                      // Divisora dos textos.
      ]),
    );
  }
}

// Resultados dos cálculos.
// ignore: must_be_immutable
class ResultEconomy extends StatelessWidget {
  var title = "";                                                         // Texto exibido.
  var labelEthanol, labelGasoline;                                        // Título do campo.
  double valueEthanol, valueGasoline;                                     // Valor do combustível.

  ResultEconomy(
      {super.key, required this.labelEthanol,                             // Recebe o título do campo.
      required this.labelGasoline,                                        // Recebe o título do campo.
      required this.title,                                                // Recebe o texto a ser exibido.
      required this.valueEthanol,                                         // Recebe o valor do Etanol.
      required this.valueGasoline});                                      // Recebe o valor da Gasolina.

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(children: [
        Container(
          alignment: Alignment.centerLeft,                                // Alinhamento do texto.
          margin: const EdgeInsets.only(left: 10, right: 10),             // Espaçamento.
          child: AutoSizeText(                                            // Torna o texto responsivo.
            title,                                                        // Texto exibido.
            maxLines: 1,                                                  // Limita o texto a uma linha, para evitar quebras.
            style: const TextStyle(fontFamily: "JetJane"),                // Fonte do texto.
          ),
        ),
        // ignore: avoid_unnecessary_containers
        Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,           // Alinhamento do texto.
              crossAxisAlignment: CrossAxisAlignment.center,              // Alinhamento do texto.
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),     // Espaçamento.
                  width: 180,                                             // Tamanho do Container.
                  alignment: Alignment.centerLeft,                        // Alinhamento do texto.
                  child: AutoSizeText(                                    // Torna o texto responsivo.
                    labelEthanol,                                         // Título do campo.
                    maxLines: 1,                                          // Limita o texto a uma linha, para evitar quebras.
                    style: const TextStyle(                               // Decoração do texto.
                      fontFamily: "JetJane",                              // Fonte do texto.
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),     // Espaçamento.
                  alignment: Alignment.centerRight,                       // Alinhamento do texto.
                  child: AutoSizeText(                                    // Torna o texto responsivo.
                    '$valueEthanol KM/L',                                 // Consumo no Etanol.
                    maxLines: 1,                                          // Limita o texto a uma linha, para evitar quebras.
                    style: const TextStyle(                               // Decoração do texto.
                      fontFamily: "JetJane",                              // Fonte do texto.
                    ),
                  ),
                ),
              ]),
        ),
        // ignore: avoid_unnecessary_containers
        Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,           // Alinhamento do texto.
              crossAxisAlignment: CrossAxisAlignment.center,              // Alinhamento do texto.
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),     // Espaçamento.
                  width: 180,                                             // Tamanho do Container.
                  alignment: Alignment.centerLeft,                        // Alinhamento do texto.
                  child: AutoSizeText(                                    // Torna o texto responsivo.
                    labelGasoline,                                        // Título do campo.
                    maxLines: 1,                                          // Limita o texto a uma linha, para evitar quebras.
                    style: const TextStyle(                               // Decoração do texto.
                      fontFamily: "JetJane",                              // Fonte do texto.
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),     // Espaçamento.
                  alignment: Alignment.centerRight,                       // Alinhamento do texto.
                  child: AutoSizeText(                                    // Torna o texto responsivo.
                    '$valueGasoline KM/L',                                // Consumo na Gasolina.
                    maxLines: 1,                                          // Limita o texto a uma linha, para evitar quebras.
                    style: const TextStyle(                               // Decoração do texto.
                      fontFamily: "JetJane",                              // Fonte do texto.
                    ),
                  ),
                ),
              ]),
        ),
        Div(),
      ]),
    );
  }
}

// Resultado da relação de gastos.
// ignore: must_be_immutable
class ExpenseRatio extends StatelessWidget {
  double value;                                                         // Porcentagem de gastos.
  double valueEthanol, valueGasoline;                                   // Valores gastos.

  ExpenseRatio(
      {super.key, required this.value,                                  // Recebe a porcentagem.
      required this.valueEthanol,                                       // Recebe o valor gasto.
      required this.valueGasoline});                                    // Recebe o valor gasto.

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(children: [
        Container(
          alignment: Alignment.centerLeft,                               // Alinhamento do texto.
          margin: const EdgeInsets.only(left: 10, right: 10),            // Espaçamento.
          child: const AutoSizeText(                                     // Torna o texto responsivo.
            "RELAÇÃO DE GASTOS",                                         // Texto exibido.
            maxLines: 1,                                                 // Limita o texto a uma linha, para evitar quebras.
            style: TextStyle(fontFamily: "JetJane"),                     // Fonte do texto.
          ),
        ),
        // ignore: avoid_unnecessary_containers
        Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,           // Alinhamento do texto.
              crossAxisAlignment: CrossAxisAlignment.center,              // Alinhamento do texto.
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),     // Espaçamento.
                  width: 180,                                             // Tamanho do Container.
                  alignment: Alignment.centerLeft,                        // Alinhamento do texto.
                  child: const AutoSizeText(                              // Torna o texto responsivo.
                    "RELAÇÃO ETANOL/GASOLINA",                            // Texto exibido.
                    maxLines: 1,                                          // Limita o texto a uma linha, para evitar quebras.
                    style: TextStyle(                                     // Decoração do texto.
                      fontFamily: "JetJane",                              // Fonte do texto.
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),     // Espaçamento.
                  alignment: Alignment.centerRight,                       // Alinhamento do texto.
                  child: AutoSizeText(                                    // Torna o texto responsivo.
                    '${value.toStringAsFixed(2)}%',                       // Porcentagem.
                    maxLines: 1,                                          // Limita o texto a uma linha, para evitar quebras.
                    style: const TextStyle(                               // Decoração do texto.
                      fontFamily: "JetJane",                              // Fonte do texto.
                    ),
                  ),
                ),
              ]),
        ),
        // ignore: avoid_unnecessary_containers
        Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,           // Alinhamento do texto.
              crossAxisAlignment: CrossAxisAlignment.center,              // Alinhamento do texto.
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),     // Espaçamento.
                  width: 180,                                             // Tamanho do Container.
                  alignment: Alignment.centerLeft,                        // Alinhamento do texto.
                  child: const AutoSizeText(                              // Torna o texto responsivo.
                    "GASTO COM ETANOL",                                   // Texto exibido.
                    maxLines: 1,                                          // Limita o texto a uma linha, para evitar quebras.
                    style: TextStyle(                                     // Decoração do texto.
                      fontFamily: "JetJane",                              // Fonte do texto.
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),     // Espaçamento.
                  alignment: Alignment.centerRight,                       // Alinhamento do texto.
                  child: AutoSizeText(                                    // Torna o texto responsivo.
                    'R\$${valueEthanol.toStringAsFixed(2)}',              // Valor gasto com Etanol.
                    maxLines: 1,                                          // Limita o texto a uma linha, para evitar quebras.
                    style: const TextStyle(                               // Decoração do texto.
                      fontFamily: "JetJane",                              // Fonte do texto.
                    ),
                  ),
                ),
              ]),
        ),
        // ignore: avoid_unnecessary_containers
        Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,           // Alinhamento do texto.
              crossAxisAlignment: CrossAxisAlignment.center,              // Alinhamento do texto.
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),     // Espaçamento.
                  width: 180,                                             // Tamanho do Container.
                  alignment: Alignment.centerLeft,                        // Alinhamento do texto.
                  child: const AutoSizeText(                              // Torna o texto responsivo.
                    "GASTO COM GASOLINA",                                 // Texto exibido.
                    maxLines: 1,                                          // Limita o texto a uma linha, para evitar quebras.
                    style: TextStyle(                                     // Decoração do texto.
                      fontFamily: "JetJane",                              // Fonte do texto.
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),     // Espaçamento.
                  alignment: Alignment.centerRight,                       // Alinhamento do texto.
                  child: AutoSizeText(                                    // Torna o texto responsivo.
                    'R\$${valueGasoline.toStringAsFixed(2)}',             // Valor gasto com Etanol.
                    maxLines: 1,                                          // Limita o texto a uma linha, para evitar quebras.
                    style: const TextStyle(                               // Decoração do texto.
                      fontFamily: "JetJane",                              // Fonte do texto.
                    ),
                  ),
                ),
              ]),
        ),
      ]),
    );
  }
}
