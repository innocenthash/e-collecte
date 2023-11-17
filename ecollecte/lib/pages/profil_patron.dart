import 'package:ecollecte/mes_donnees/accord/accord_client.dart';
import 'package:ecollecte/mes_donnees/listes_categorie.dart';
import 'package:ecollecte/mes_donnees/listes_produits.dart';
import 'package:ecollecte/mes_donnees/listes_societes.dart';
import 'package:ecollecte/pages/categorie_de_produit.dart';
import 'package:flutter/material.dart';

class ProfilPatron extends StatefulWidget {
  const ProfilPatron({super.key});

  @override
  State<ProfilPatron> createState() => _ProfilPatronState();
}

class _ProfilPatronState extends State<ProfilPatron> {
  List<Map<String, dynamic>> listesSocietes = ListesSocietes.listesSocietes;
  List<Map<String, dynamic>> listesCategorie = ListesCategorie.listesCategorie;

  List<Map<String, dynamic>> accordClient = AccordClient.accordClient;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Société de Distribution',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      // backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body:
          // SingleChildScrollView(
          //   child: Column(
          //     children: [
          Column(children: [
        Stack(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                accordClient[0]["image_accord"],
                // fit: BoxFit.cover,
                // height: 200,
                // width: 300,
                alignment: Alignment.center,
              ),
            ),
            Container(
              height: 150,
              width: double.infinity,
              alignment: Alignment.bottomCenter,
              child: Text(
                accordClient[0]["phrase_accord"],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 82, 82, 82),
                  fontWeight: FontWeight.bold
                ),
              ),
            )
          ],
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10),
            child: ListView.builder(
                itemCount: listesSocietes.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    margin: const EdgeInsets.all(5),
                    child: ListTile(
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 183, 0, 255),
                            width: 4.0,
                          ),
                        ),
                        child: ClipOval(
                          // borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            listesSocietes[index]["images_societes"],
                            height: 50.0,
                            width: 50.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(listesSocietes[index]['nom_societes']),
                      subtitle:
                          Text(listesSocietes[index]['nom_pdg_de_la_societe']),
                      trailing: const Icon(Icons.arrow_circle_right),
                      onTap: () {
                        Navigator.of(context).pushNamed(
                            CategorieDeProduit.categorieRoute,
                            arguments: [
                              listesCategorie[index], index
                              // listesProduits[index]
                            ]);
                      },
                    ),
                  );
                }),
          ),
        ),
      ]),
      //   ]),
      // ),
    );
  }
}
