import 'package:week2_if5a/model/recipe.dart';


class RecipeController {
  final List<Recipe> _recipes = [];

  

  RecipeController() {
    // Initialize with some sample recipes
    _recipes.addAll([
      Recipe(
        id: 1, 
        name: "Nasi Goreng Nanas Ala Thai", 
        description: "Nasi Goreng Nanas Ala Thai bukan sekadar nasi goreng biasa. Ini adalah perpaduan rasa gurih, manis, dan asam yang membangkitkan selera, membawa Anda langsung ke aroma eksotis Thailand. Sajian ini menghadirkan pengalaman kuliner yang unik dan menyegarkan, cocok untuk dinikmati kapan saja.", 
        urlPhoto: "https://resepmamiku.com/wp-content/uploads/2025/08/Screenshot_2025-08-10-14-19-22-26_3aea4af51f236e4932235fdada7d1643.jpg",
      ),
      Recipe(
        id: 2, 
        name: "Semur Ayam Kampung Telor Kentang", 
        description: "Semur Ayam Kampung Telur Kentang adalah hidangan klasik Indonesia yang kaya rasa dan aroma. Perpaduan ayam kampung yang gurih, telur rebus yang lembut, dan kentang yang pulen, berpadu sempurna dalam kuah semur yang manis dan sedikit pedas. Masakan ini bukan hanya lezat, tetapi juga penuh dengan kenangan masa kecil dan kehangatan keluarga.", 
        urlPhoto: "https://resepmamiku.com/wp-content/uploads/2024/01/semur-ayam-kampung-telor-kentang-fransiskaailen-760x950.jpg",
      ),
      Recipe(
        id: 3, 
        name: "Bihun Kuah Komplit", 
        description: "Bihun Kuah Komplit adalah hidangan berkuah hangat yang menghadirkan perpaduan sempurna antara bihun lembut, kaldu kaya rasa, dan beragam isian yang memanjakan lidah. Lebih dari sekadar hidangan rumahan, Bihun Kuah Komplit menawarkan pengalaman kuliner yang sederhana namun istimewa, cocok dinikmati kapan saja.", 
        urlPhoto: "https://resepmamiku.com/wp-content/uploads/2025/08/471598909_620622373675364_4470969325070331556_n-1-760x724.jpg",
      ),
      Recipe(
        id: 4, 
        name: "Chinese Style Bbq Chicken", 
        description: "Siapa yang bisa menolak aroma menggoda dari barbeque? Kini hadir inovasi rasa yang memadukan kelezatan klasik barbeque dengan sentuhan khas oriental: Chinese Style BBQ Chicken. Bukan sekadar ayam panggang biasa, hidangan ini menawarkan pengalaman kuliner yang unik dan tak terlupakan.", 
        urlPhoto: "https://resepmamiku.com/wp-content/uploads/2025/08/465895860_969184268299383_3046160890501910397_n-760x950.jpg",
      ),
      Recipe(
        id: 5, 
        name: "Ayam Goreng Bacem", 
        description: "Siapa yang bisa menolak kelezatan ayam goreng bacem? Hidangan klasik Jawa Tengah ini memadukan cita rasa manis dan gurih yang begitu memikat. Ayam yang direndam dalam bumbu bacem yang kaya rempah, kemudian digoreng hingga keemasan, menciptakan sensasi rasa yang tak terlupakan.", 
        urlPhoto: "https://resepmamiku.com/wp-content/uploads/2024/12/471634060_18025577021628118_8411038861524070943_n.jpg",
      ),
    ]);
  }

  List<Recipe> getAllrecipes() => _recipes;

}