import 'dart:async';
import 'package:flutter/material.dart'; // classe du widget

class AdsWidget extends StatefulWidget {
  AdsWidget({super.key});
  /* 
       dart :      
       List : équivalent à un array indicé     
        Map : équivalent à un objet JS     
         visiblité des membres :        
         pas de protected        
         préfixe _ : équivalent à private  
         */
  // Liste des Map
  final List<Map> _items = [
    {'img': 'ad1.jpg', 'text': 'Text1'},
    {'img': 'ad2.jpg', 'text': 'Text2'},
    {'img': 'ad3.jpg', 'text': 'Text3'},
  ];
  // indice de la liste
  final int _index = 0;
  // minuteur
  // ? : valeur nulle
  Timer? _timer;
  @override
  State<AdsWidget> createState() => _AdsWidgetState();
} // classe de l'état du widget

class _AdsWidgetState extends State<AdsWidget> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [],
    );
  }
}
