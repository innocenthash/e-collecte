import "package:ecollecte/map/leaflet.dart";
import "package:ecollecte/mes_donnees/listes_produits.dart";
import "package:ecollecte/pages/produits_de_categorie.dart";
import "package:flutter/material.dart";

class CategorieDeProduit extends StatefulWidget {
  const CategorieDeProduit({super.key});
  static const categorieRoute = '/categorie_des_produits';

  @override
  State<CategorieDeProduit> createState() => _CategorieDeProduitState();
}

class _CategorieDeProduitState extends State<CategorieDeProduit> {
  @override
  Widget build(BuildContext context) {
    List? argument =
        ModalRoute.of(context)!.settings.arguments as List<dynamic>?;
    Map<String, dynamic>? arguments = argument?[0];
    int indexSociete = argument?[1];
    // Map<String, dynamic>? arguments =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    // Récupérez la liste réelle depuis les arguments
    List<String>? categories = arguments?["nom_categorie"];
    List<Map<String, dynamic>>? villeCible = arguments?["ville"];
    List<List<List<Map<String, dynamic>>>> listesProduits =
        ListesProduits.listesProduits;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Les categories des produits qu\'on cherche'),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                  style: BorderStyle.solid, width: 5, color: Colors.purple),
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
              // color: Colors.black ,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Emplacement',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 147, 147, 147)),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Container(
            height: 250,
            width: double.infinity,
            child: CustomScrollView(
              scrollDirection: Axis.vertical,
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(
                    List.generate(
                      villeCible?.length ?? 0,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.all(5),
                          child: Card(
                            elevation: 0,
                            color: const Color.fromARGB(255, 197, 51, 255),
                            shape: const RoundedRectangleBorder(
                              // side: BorderSide(
                              //   // color: Theme.of(context).colorScheme.outline,
                              // ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            //  margin: const EdgeInsets.all(6),
                            child: GestureDetector(
                              onTap: () {
                                print(index);
                                Navigator.of(context).pushNamed(
                                    Leaflet.leafletMapsRoute,
                                    arguments: villeCible[index]
                                        ['coordonnees']);
                              },
                              child: SizedBox(
                                width: 200,
                                height: 100,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.place,
                                      color: Colors.white,
                                      size: 50,
                                    ),
                                    Text(
                                      villeCible![index]['nom_ville'],
                                      style: const TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    // Text(
                                    //   // villeCible[index]['coordonnees']['long'].toString(),
                                    //   style: const TextStyle(
                                    //       fontSize: 15,
                                    //       color: Colors.white,
                                    //       fontWeight: FontWeight.bold),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
           Container(
            margin: EdgeInsets.all(5),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                  style: BorderStyle.solid, width: 5, color: Colors.purple),
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
              // color: Colors.black ,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Categorie',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 147, 147, 147)),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemCount: categories?.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                        ProduitsDeCategorie.produitsRoute,
                        arguments: listesProduits[indexSociete][index]);
                    print(indexSociete);
                  },
                  // child: Container(
                  // margin: const EdgeInsets.all(6),
                  // color: const Color.fromARGB(255, 255, 0, 85),
                  // // child: GestureDetector(
                  // //   onTap: () {
                  // //     print('coucou');
                  // //   },

                  child: Container(
                    margin: EdgeInsets.all(10),
                    // height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amber,
                      border: Border.all(
                        color: Colors.purple,
                        style: BorderStyle.solid,
                        width: 5,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        categories![index],
                        style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  // ),
                );
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}
