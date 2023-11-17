import 'package:ecollecte/pages/specifique_produits.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProduitsDeCategorie extends StatefulWidget {
  const ProduitsDeCategorie({super.key});
  static const produitsRoute = '/produits_de_categorie';

  @override
  State<ProduitsDeCategorie> createState() => _ProduitsDeCategorieState();
}

class _ProduitsDeCategorieState extends State<ProduitsDeCategorie> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listesProduits = ModalRoute.of(context)!
        .settings
        .arguments as List<Map<String, dynamic>>;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Tous les produits'),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate(
                    List.generate(listesProduits.length, (index) {
              return Container(
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(100),
                  // color: Colors.amber
                ),
                height: 300,
                child: Card(
                  elevation: 1,
                  color: Color.fromARGB(255, 255, 255, 255),
                  margin: const EdgeInsets.only(
                      top: 5, right: 30, left: 40, bottom: 5),

                  // child: Container(
                  // height: 200,
                  // width: 200,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            child: ShaderMask(
                              shaderCallback: (mask) {
                                return const LinearGradient(
                                        colors: [
                                      Color.fromARGB(255, 99, 98, 98),
                                      Colors.white
                                    ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter)
                                    .createShader(mask);
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  listesProduits[index]['image_produit'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              // color: Colors.amber,
                            ),
                            child: IconButton(
                              onPressed: () {
                                // print('ok');
                                Navigator.of(context).pushNamed(
                                  SpecifiqueProduits.specifiqueProduitsRoute,
                                  arguments: listesProduits[index],
                                );
                              },
                              icon: Icon(Icons.add_circle_outline),
                              color: const Color.fromARGB(255, 255, 255, 255),
                              iconSize: 50,
                              hoverColor: Colors.amber,
                              // alignment: ,
                            ),
                          ),
                        )
                      ]),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(8.0),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.purpleAccent,
                        ),
                        child: Center(
                          child: Text(
                            listesProduits[index]['nom_produit'].toString(),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // ),
                ),
              );
            })))
          ],
        )
        // Text(listesProduits[1].toString()),
        );
  }
}
