import 'package:flutter/cupertino.dart';

// ignore: use_key_in_widget_constructors
class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        const SizedBox(height: 15), // Espaçamento entre os widgets.
        
        // Exibe a imagem informada na tela.
        Container(
          margin: const EdgeInsets.only(left: 23, right: 23),   // Espaçamento do Container.
          child: Image.asset("assets/images/logo.png"),         // Imagem a ser usada.
        ),

        const SizedBox(height: 26),                             // Espaçamento entre os widgets.

        // Exibe a imagem informada na tela.
        Container(
            margin: const EdgeInsets.only(left: 18, right: 18), // Espaçamento do Container.
            child: Image.asset("assets/images/posto.png",)),    // Imagem a ser usada.
        
        const SizedBox(height: 17),                             // Espaçamento entre os widgets.
      
      ],
    );
  }
}

// ignore: use_key_in_widget_constructors
class HeaderBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        const SizedBox(height: 10), // Espaçamento entre os widgets.

        // Exibe a imagem informada na tela.
        Container(
          margin: const EdgeInsets.only(left: 23, right: 23),     // Espaçamento do Container.
          child: Image.asset("assets/images/logo.png"),           // Imagem a ser usada.
        ),

        const SizedBox(height: 20), // Espaçamento entre os widgets.
        
        // Exibe a imagem informada na tela.
        Container(
          height: 80,                                             // Tamanho da imagem.
            margin: const EdgeInsets.only(left: 18, right: 18),   // Espaçamento do Container.
            child: Image.asset("assets/images/posto.png",)),      // Imagem a ser usada.

        const SizedBox(height: 10),  // Espaçamento entre os widgets.
      
      ],
    );
  }
}