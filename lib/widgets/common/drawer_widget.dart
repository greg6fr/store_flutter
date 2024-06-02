import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:store/providers/category_provider.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  Future<List<String>> fetchCategories() async {
    final response = await http.get(Uri.parse('https://fakestoreapi.com/products/categories'));
    if (response.statusCode == 200) {
      List<String> categories = List<String>.from(json.decode(response.body));
      return categories;
    } else {
      throw Exception('Failed to load categories');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.only(
          top: 30,
          left: 15,
          right: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CloseButton(),
              ],
            ),
            const Text(
              'Categories',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: FutureBuilder<List<String>>(
                future: fetchCategories(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return const Center(child: Text('Failed to load categories'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Center(child: Text('No categories available'));
                  } else {
                    final categories = snapshot.data!;
                    return ListView.builder(
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: const Icon(Icons.category),
                          title: Text(categories[index]),
                          onTap: () {
                            final categoryProvider = Provider.of<CategoryProvider>(context, listen: false);
                            categoryProvider.setCategory(categories[index]);
                            Navigator.pop(context); // Close the drawer
                            context.pushNamed('products'); // Navigate to products screen
                          },
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
