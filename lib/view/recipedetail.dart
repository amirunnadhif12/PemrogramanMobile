import 'package:flutter/material.dart';
import 'package:week2_if5a/model/recipe.dart';


class RecipeDetailPage extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailPage({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Detail Recipe",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true, // Judul di tengah
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// GAMBAR
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(recipe.urlPhoto),
            ),

            const SizedBox(height: 20),

            /// NAMA RESEP
            Text(
              recipe.name,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            /// DESKRIPSI (ADA READ MORE)
            Text( 
              recipe.description,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
