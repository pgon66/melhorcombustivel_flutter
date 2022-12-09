import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:auto_size_text/auto_size_text.dart';
import 'package:melhor_combustivel/screens/home.dart';

// Este widget é responsável pelo Botão de Calcular.
// ignore: must_be_immutable
class ButtonCalculate extends StatelessWidget {
  var label = "";                                                   // Recebe o valor impresso no botão.
  final void Function()? func;                                      // Função que será recebida.

  // ignore: use_key_in_widget_constructors
  ButtonCalculate({required this.label, this.func});                // Responsável por receber os valores quando a classe é chamada.

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,                                                   // Altura do botão.
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),  // Espaçamento do botão.
      decoration: BoxDecoration(                                    // Decoração do fundo do botão.
        color: const Color(0xFFC42A4B),                           // Cor do Fundo.
        borderRadius: BorderRadius.circular(5),                     // Cantos Redondos.
      ),
      
      // Este widget é responsável pelo texto presente no botão.
      child: TextButton(
        
        // ignore: sort_child_properties_last
        child: AutoSizeText(                                        // Torna o texto responsivo.
          label,                                                    // Recebe o texto a ser exibido no botão.
          maxLines: 1,                                              // Limita o texto a uma linha, para evitar quebras.
          style: const TextStyle(                                   // Decoração do texto do botão.
            color: Colors.white,                                  // Cor do texto.
            fontSize: 36,                                           // Tamanho da fonte. 
            fontFamily: "InterBold",                                // Fonte do texto.
          ),
        ),
        onPressed: func,                                            // Recebe uma Function, e executa quando o botão é pressionado.
      ),
    );
  }
}

// ignore: must_be_immutable
class ButtonBack extends StatelessWidget {
  var label = "";                                                  // Recebe o valor impresso no botão.

  // ignore: use_key_in_widget_constructors
  ButtonBack({required this.label});                               // Responsável por receber os valores quando a classe é chamada.

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 60,                                                  // Altura do botão.
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20), // Espaçamento do botão.
      decoration: BoxDecoration(                                   // Decoração do fundo do botão.
        color: const Color(0xFFC42A4B),                          // Cor do Fundo.
        borderRadius: BorderRadius.circular(5),                    // Cantos Redondos.
      ),
      
      // Este widget é responsável pelo texto presente no botão.
      child: TextButton(
        child: AutoSizeText(                                        // Torna o texto responsivo.
          label,                                                    // Recebe o texto a ser exibido no botão.
          maxLines: 1,                                              // Limita o texto a uma linha, para evitar quebras.
          style: const TextStyle(                                   // Decoração do texto do botão.
            color: Colors.white,                                  // Cor do texto.
            fontSize: 36,                                           // Tamanho da fonte. 
            fontFamily: "InterBold",                                // Fonte do texto.
          ),
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen())); // Redireciona o usuário para a página inicial quando pressionado.
        },
      ),
    );
  }
}