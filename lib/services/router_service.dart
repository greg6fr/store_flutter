import 'package:go_router/go_router.dart';
import 'package:store/screens/cart_details_screen.dart';
import 'package:store/screens/home_screen.dart';
import 'package:store/screens/product_details_screen.dart';
import 'package:store/screens/product_screen.dart';

class RouterService {
  // lister les routes
  static GoRouter getRouter() {
    return GoRouter(
      routes: [
        GoRoute(
          /*
            path : schéma Web d'une route
              > la route / doit exister et est considérée comme la route d'accueil
            name : nom de la route
            builder permet deimport 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:store/models/product.dart';
import 'package:store/providers/cart_provider.dart';
import 'package:store/widgets/common/appbar_widget.dart';

class CartDetailsWidget extends StatelessWidget {
  final Product product;
    const CartDetailsWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CartProvider>(
        builder: (context, cartProvider, child) {
          if (cartProvider.cartItems.isEmpty) {
            return const Center(
              child: Text('Your cart is empty'),
            );
          }
          return child!;
        },
        child: null,
      ),
    );
  }
}
 cibler un widget associé à la route
          */
          path: '/',
          name: 'home',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/product-details',
          name: 'product-details',
          builder: (context, state) => const ProductDetailsScreen(),
        ),
        GoRoute(
          path: '/cart',
          name: 'cart',
          builder: (context, state) => const CartDetailsScreen(),
        ),
        GoRoute(
          path: '/products',
          name: 'products',
          builder: (context, state) => const ProductsScreen(),
        ),
      ],
    );
  }
}
