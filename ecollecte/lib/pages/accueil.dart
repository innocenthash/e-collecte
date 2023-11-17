import 'package:ecollecte/mes_donnees/listes_provinces.dart';
import 'package:ecollecte/mes_donnees/produit_banniers.dart';
import 'package:ecollecte/pages/accueil/description_province/description_province.dart';
import 'package:ecollecte/pages/developpeur/apropos.dart';
import 'package:flutter/material.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  List<Map<String, dynamic>> produitBannier = ProduitBanniers.produitBanniers;
  List<Map<String, dynamic>> listeProvince = ListesProvinces.listesProvinces;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: const Color.fromRGBO(224, 64, 251, 1),
        // leading: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.circular(50),
        //     child: Image.asset("assets/images_logo/e_appbar.png"),
        //   ),
        // ),
        title: const Text('e-collecte'),

        // centerTitle: true,
        actions: [
          // Icon(Icons.abc_rounded),
          // Icon(Icons.abc_rounded),
          // Icon(Icons.account_circle),
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Apropos.AproposRoute);
              },
              icon: Icon(Icons.account_circle))
        ],
      ),
      // backgroundColor: Color.fromARGB(255, 234, 234, 234),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(4),
            height: 200.0,
            child: PageView.builder(
              itemCount: produitBannier.length,
              itemBuilder: (context, index) {
                return Stack(children: [
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    child: ShaderMask(
                      shaderCallback: (mask) {
                        return const LinearGradient(
                                colors: [
                              Color.fromARGB(49, 0, 0, 0),
                              Color.fromARGB(255, 195, 195, 195),
                              Colors.white
                            ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter)
                            .createShader(mask);
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Image.asset(
                          produitBannier[index]['images_banniers'],
                          // fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(1),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        produitBannier[index]['text_banniers'],
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 118, 115, 115),
                        ),
                      ),
                    ),
                  ),
                ]);
              },
            ),
          ),
          Divider(
              color: Color.fromARGB(255, 210, 210, 210),
              indent: 12,
              endIndent: 12),
          Padding(
            padding: EdgeInsets.only(bottom: 0),
            child: Card(
              elevation: 1,
              child: Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.purple,
                ),
                child: Center(
                  child: Text(
                    'Le Secteur Agricole de Madagascar',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Divider(
              color: Color.fromARGB(255, 210, 210, 210),
              indent: 12,
              endIndent: 12),
          Expanded(
            child: Container(
              height: double.infinity,
              // color: Colors.red,
              // padding: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white10,
              ),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: listeProvince.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(4),
                    height: 100,
                    width: 20,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Container(
                            height: double.infinity,
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: ShaderMask(
                                shaderCallback: (mask) {
                                  return const LinearGradient(
                                          colors: [
                                        Color.fromARGB(49, 0, 0, 0),
                                        Color.fromARGB(255, 195, 195, 195),
                                        Colors.white
                                      ],
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter)
                                      .createShader(mask);
                                },
                                child:
                                    //  FadeInImage.assetNetwork(
                                    //   placeholder:
                                    //       "assets/images_loader/loader.gif",
                                    //   image: listeProvince[index]['image_province'],
                                    //   fit: BoxFit.cover,
                                    // ),
                                    Image.asset(
                                  listeProvince[index]['image_province'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                listeProvince[index]['nom_province'],
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(
                                DescriptionProvince.descriptionProvinceRoute,
                                arguments: listeProvince[index],
                              );
                            },
                            icon: Icon(Icons.arrow_forward_ios_sharp),
                            color: Colors.white,
                            iconSize: 20,
                            tooltip:
                                'Description de la ville de ${listeProvince[index]['nom_province']}',
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
