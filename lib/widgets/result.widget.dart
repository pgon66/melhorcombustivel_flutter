import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:melhor_combustivel/widgets/texts.widget.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:melhor_combustivel/widgets/header.widget.dart';
import 'package:melhor_combustivel/widgets/texts.widget.dart';

import 'header.widget.dart';

class ResultWidget extends StatelessWidget {

  var valorEtanol, valorGasolina;
  var consumoEtanol, consumoGasolina;
  var relacaoEtanolGasolina;
  var gastoEtanol, gastoGasolina;
  var melhorOpcao;
  var economia;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          HeaderBanner(),
          Container(
            margin: const EdgeInsets.only(left: 23, right: 23),
            child: Image.asset("assets/images/edge.png"),
          ),
          Container(
            height: 382,
            margin: const EdgeInsets.only(left: 23, right: 23),
            decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.elliptical(20, 20))),
            child: Column(
              children: [
                ResultHeader(),
                ResultsTitles(
                  label: "RESULTADO FINAL",
                ),
                ResultValue(
                    title: "VALOR DO COMBUSTÍVEL POR LITRO ",
                    labelEthanol: "1 LITRO DE ETANOL",
                    labelGasoline: "1 LITRO DE GASOLINA",
                    valueEthanol: valorEtanol,
                    valueGasoline: valorGasolina),
                ResultEconomy(
                    title: "CONSUMO INFORMADO - KM POR LITRO ",
                    labelEthanol: "CONSUMO NO ETANOL",
                    labelGasoline: "CONSUMO NA GASOLINA",
                    valueEthanol: consumoEtanol,
                    valueGasoline: consumoGasolina),
                ExpenseRatio(
                  value: relacaoEtanolGasolina,
                  valueEthanol: gastoEtanol,
                  valueGasoline: gastoGasolina,
                ),
                ResultsTitles(label: melhorOpcao),
                AutoSizeText(
                  'ECONOMIA DE R\$ ${economia} POR LITRO',
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: "JetJane",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}