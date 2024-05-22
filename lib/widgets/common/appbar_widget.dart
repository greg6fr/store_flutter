import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      /*
        title : texte, ou icone, ou image
        centerTitle : centrer le titre
        leading : regroupement de widget à gauche de la barre de navigation
        actions : regroupement de widget à droite de la barre de navigation
      */
      centerTitle: true,
      title: const Text("Store",
          style: TextStyle(
              // color: colors.deepOrange,
              color: Color.fromRGBO(255, 0, 255, 1),
              fontSize: 20,
              fontFamily: 'SpaceGrotesk')),
      actions: [
        IconButton(
            onPressed: () {
              /*
            débogage:
             print : affichage de donées simples
             inspect : affichage de données détaillées ou complexe
          */
              print('on pressed');
            },
            icon: const Icon(Icons.person)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
