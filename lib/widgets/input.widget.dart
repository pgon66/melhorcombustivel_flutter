import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

// Campo de digitação do consumo.
// ignore: must_be_immutable
class InputTextConsumption extends StatelessWidget {
  var ctrl = MoneyMaskedTextController();                   // Controler que recebe o valor do consumo. 

  InputTextConsumption({super.key, required this.ctrl});    // Recebe o valor do consumo quando a classe é chamada. 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),   // Espaçamento.
      alignment: Alignment.center,                          // Posição na tela.
      height: 40,                                           // Altura do input.
      padding: const EdgeInsets.only(left: 5, right: 12),   // Espaçamento.
      decoration: BoxDecoration(                            // Decoração do campo.
        color: Colors.white,                              // Cor do campo.
        borderRadius: BorderRadius.circular(30),            // Borda redonda.
        border: Border.all(                                 // Decoração da borda.
          color: const Color(0xFF7B7B7B),                 // Cor da borda.
        ),
      ),
      child: TextFormField(                                 // Input de texto.
        controller: ctrl,                                   // Controller que recebe os valores.
        keyboardType: TextInputType.number,                 // Tipo de teclado.
        textAlign: TextAlign.end,                           // Alinhamento do texto.
        style: const TextStyle(                             // Decoração do texto.
          fontSize: 21,                                     // Tamanho da fonte.
        ),
        decoration: const InputDecoration(                  // Decoração do Input.
          suffixText: "km/l",                               // Sufixo do Input.
          suffixStyle: TextStyle(                           // Decoração do texto.
            color: Color(0xFFC42A4B),                     // Cor do texto.
            fontSize: 21,                                   // Tamanho do texto.
            fontFamily: "InterSemiBold",                    // Fonte do texto.
          ),
          prefixIcon: Icon(                                 // Prefixo do Input.
            Icons.speed,                                    // Icone escolhido.
            size: 30,                                       // Tamanho do icone.
          ),
          border: InputBorder.none,                         // Linha inferior do Input.
        ),
      ),
    );
  }
}

// Campo de digitação do valor do combustível.
// ignore: must_be_immutable
class InputTextFuel extends StatelessWidget {
  var ctrl = MoneyMaskedTextController();                   // Controler que recebe o valor do combustível. 

  InputTextFuel({super.key, required this.ctrl});           // Recebe o valor do combustível quando a classe é chamada.

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),   // Espaçamento.
      alignment: Alignment.center,                          // Posição na tela.
      height: 40,                                           // Altura do input.
      padding: const EdgeInsets.only(left: 5, right: 12),   // Espaçamento.
      decoration: BoxDecoration(                            // Decoração do campo.
        color: Colors.white,                              // Cor do campo.
        borderRadius: BorderRadius.circular(30),            // Borda redonda.
        border: Border.all(                                 // Decoração da borda.
          color: const Color(0xFF7B7B7B),                 // Cor da borda.
        ),
      ),
      child: TextFormField(                                 // Input de texto.
        controller: ctrl,                                   // Controller que recebe os valores.
        keyboardType: TextInputType.number,                 // Tipo de teclado.
        textAlign: TextAlign.end,                           // Alinhamento do texto.
        style: const TextStyle(                             // Decoração do texto.
          fontSize: 21,                                     // Tamanho da fonte.
        ),
        decoration: const InputDecoration(                  // Decoração do Input.
          prefixText: "R\$",                                // Prefixo do Input.
          prefixStyle: TextStyle(                           // Decoração do prefixo.
            color: Color(0xFFC42A4B),                     // Cor do prefixo.
            fontSize: 21,                                   // Tamanho da fonte.
            fontFamily: "InterSemiBold",                    // Fonte do prefixo.
          ),
          prefixIcon: Icon(                                 // Prefixo do Input
            Icons.local_gas_station_outlined,               // Icone escolhido.
            size: 30,                                       // Tamanho do icone.
          ),
          border: InputBorder.none,                         // Linha inferior do Input.
        ),
      ),
    );
  }
}
