import 'package:ecollecte/map/leaflet.dart';
import 'package:ecollecte/pages/accueil.dart';
import 'package:ecollecte/pages/menu.dart';
import 'package:ecollecte/pages/profil_patron.dart';
import 'package:ecollecte/second_page.dart';
import 'package:ecollecte/widgets/bottom_de_navigation.dart';
import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int pageCourant =0;
  int nombre = 35;
 List<String> namesPages =["Accueil", "Marché des produits","Rejoignez nous"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: pageCourant == 0 ? const Accueil() : pageCourant==1 ? const ProfilPatron() :  const Menu()  ,
     backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      bottomNavigationBar: BottomDeNavigation(
          namesPages:namesPages,
          function: (valeur) {
            setState(() {
              pageCourant = valeur;
            });
          }),
    //  backgroundColor: const Color.fromARGB(255, 8, 53, 74),
    );
  }
}
