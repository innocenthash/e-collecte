import "package:ecollecte/pages/responsable_technique.dart";
import "package:flutter/material.dart";

class SpecifiqueProduits extends StatefulWidget {
  const SpecifiqueProduits({super.key});
  static const specifiqueProduitsRoute = "/specifique_produits";

  @override
  State<SpecifiqueProduits> createState() => _SpecifiqueProduitsState();
}

class _SpecifiqueProduitsState extends State<SpecifiqueProduits> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> argument =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Description"),
      ),
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      body: SingleChildScrollView(
        child: Container(
          // margin: const EdgeInsets.all(1),
          margin: EdgeInsets.symmetric(horizontal: 3),
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Card(
                    // margin: const EdgeInsets.all(5),
                    color: Color.fromARGB(255, 255, 255, 255),
                    elevation: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          argument["image_produit"],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Expanded(
              //   child: ListView.separated(
              //       itemBuilder: (context, index) {
              //         return ListTile(
              //           leading: Text(argument["nom_produit"]),
              //           title: Text(argument["poids_produit"]),
              //           subtitle: Text(argument["description_produit"]),
              //           trailing: Text('${argument["prix_produit"]} Ar'),
              //         );
              //       },
              //       separatorBuilder: (context, index) {
              //         return const Divider(
              //           indent: 12,
              //           endIndent: 12,
              //         );
              //       },
              //       itemCount: 1),
              // ),

              SingleChildScrollView(
                child: Container(
                  // color: Colors.pink,
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        child: Card(
                          elevation: 0,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Nom',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(argument["nom_produit"]),
                                ]),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Card(
                          elevation: 0,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Poid',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(argument["poids_produit"]),
                                ]),
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: double.infinity,
                        child: Card(
                          elevation: 0,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Wrap(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Row(
                                    children: [
                                      Text(
                                        'Description',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Text(argument["description_produit"]),
                                ]),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Card(
                          elevation: 0,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Prix',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text('${argument["prix_produit"]} Ar'),
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
               
                // color: const Color.fromARGB(255, 255, 255, 255),
                width: double.infinity,
                child: Card(
                  elevation: 0,
                  color: Colors.purple,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                          ResponsableTechnique.responsableTechniqueRoute,arguments:argument["responsable"]);
                    },
                    child: const Text(
                      'Contact',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
