import 'package:flutter/material.dart';
import 'package:store/widgets/common/appbar_widget.dart';
import 'package:store/widgets/common/drawer_widget.dart';
import 'package:store/widgets/home/ads_widget.dart';
import 'package:store/widgets/home/products_grid_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /*
      Scaffold : une fenêtre avec une barre de navigation et un corps
        body : le contenu
        AppBar : une barre d'en-tête
        Drawer : menu coulissant 
        floatingButton : un bouton flottant
    */
    return Scaffold(
      appBar: const AppbarWidget(),
      drawer: const DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AdsWidget(),
            const ProductsGridWidget()
           
          ],
        ),
      ),
    );
  }
}
