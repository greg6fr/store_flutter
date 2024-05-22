// import des packages
// bibliotheque material : bibliothede de design de google

import 'package:flutter/material.dart';
import 'package:store/screens/home_screen.dart';
//  fonction main : point d'entrée de l'application

void main() => runApp(const Store());

class Store extends StatelessWidget {
  const Store({super.key});

// la methode build permet de difinir linterface visuelle du widget

/* architecture:
    MaterialApp : represente lapplication
      >Scaffold : permet darchitecturer l'application
        >premier ecrant 

principeau widgets:
  -SingleChildRenderObjectWidget : un widget qui a une seule zone d'affichage ou un ascenseur
  -row : un widget qui a une seule zone d'affichage ou un ascenseur
  -column : un widget qui a une seule zone d'affichage ou un ascenseur
  -text : un widget qui a une seule zone d'affichage ou un ascenseur
  -image : un widget qui a une seule zone d'affichage ou un ascenseur
  */

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Store",
      home: HomeScreen(),
    );
  }
}
