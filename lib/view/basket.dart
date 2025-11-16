import 'package:flutter/material.dart';
import 'package:week2_if5a/controller/recipeController.dart';
import 'package:week2_if5a/model/recipe.dart';

import 'package:week2_if5a/controller/readmore.dart';
import 'package:week2_if5a/view/recipedetail.dart';

class BasketScreen extends StatefulWidget {
  final RecipeController recipeController;
  const BasketScreen({super.key, required this.recipeController});

  @override
  State<BasketScreen> createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {
  List<Recipe> recipes = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recipes = widget.recipeController.getAllrecipes();
  }
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text("My Basket"),
      ),
      body: ListView(
        shrinkWrap: true,
        children: widgetRecipe(recipes),
      ),
      // Center(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       ElevatedButton(
      //         onPressed: (){
      //           Navigator.push(
      //             context, 
      //             MaterialPageRoute(builder: (context) => ItemBasket(1, 5))
      //           );
      //         }, 
      //         child: Text("Item 1")
      //       ),
      //       ElevatedButton(
      //         onPressed: (){
      //           Navigator.push(
      //             context, 
      //             MaterialPageRoute(builder: (context) => ItemBasket(2, 10))
      //           );
      //         }, 
      //         child: Text("Item 2")
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

    List<Widget> widgetRecipe(List<Recipe> recipes) {
      List<Widget> list = [];

      for (var recipe in recipes) {
        list.add(
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),

            /// WRAP WITH INKWELL AGAR BISA DIKLIK
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeDetailPage(recipe: recipe),
                  ),
                );
              },

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    /// NAMA RESEP
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        recipe.name,
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.black54,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    /// GAMBAR
                    SizedBox(
                      height: 300,
                      child: Image.network(
                        recipe.urlPhoto,
                        height: 200,
                        fit: BoxFit.fitWidth,
                      ),
                    ),

                    /// DESKRIPSI SHORT (READ MORE)
                    ReadMoreText(text: recipe.description),

                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        );
      }

      return list;
    }


}
