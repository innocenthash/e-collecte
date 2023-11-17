import 'package:ecollecte/home_page.dart';
import 'package:ecollecte/map/leaflet.dart';
import 'package:ecollecte/pages/accueil/description_province/description_province.dart';
import 'package:ecollecte/pages/categorie_de_produit.dart';
import 'package:ecollecte/pages/developpeur/apropos.dart';
import 'package:ecollecte/pages/produits_de_categorie.dart';
import 'package:ecollecte/pages/responsable_technique.dart';
import 'package:ecollecte/pages/specifique_produits.dart';
import 'package:ecollecte/second_page.dart';
import 'package:ecollecte/spash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme:
        // Color.fromARGB(255, 183, 0, 255))
            const AppBarTheme(color: Colors.purple),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(backgroundColor: Colors.purple),
      ),
      home: const SplashScreen(),
      routes: {
        // SecondPage.secondPage: (context) => const SecondPage(),
        CategorieDeProduit.categorieRoute:(context) => const CategorieDeProduit() ,
        ProduitsDeCategorie.produitsRoute : (context) =>const ProduitsDeCategorie() ,
        SpecifiqueProduits.specifiqueProduitsRoute :(context)=>const SpecifiqueProduits(),
        ResponsableTechnique.responsableTechniqueRoute:(context)=> const ResponsableTechnique(),
        DescriptionProvince.descriptionProvinceRoute:(context)=> const DescriptionProvince() ,
        Apropos.AproposRoute:(context)=> const Apropos() ,
        Leaflet.leafletMapsRoute:(context)=> Leaflet()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: const Color.fromRGBO(224, 64, 251, 1),
//           title: const Text('Bee'),
//           centerTitle: true,
//           actions: const [
//             Icon(Icons.abc_rounded),
//             Icon(Icons.abc_rounded),
//             Icon(Icons.abc_rounded),
//           ],
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           backgroundColor: const  Color.fromRGBO(224, 64, 251, 1),
//           items: const [
//             BottomNavigationBarItem(
//               // title: Text('a'),
//               icon: Icon(Icons.edit_location),
//             label: 'a'
//             ),
//             BottomNavigationBarItem(
//               // title: Text('a'),
//               label: "b",
//               icon: Icon(Icons.abc_sharp),
//             )
//           ],
//         ),
//       ),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
