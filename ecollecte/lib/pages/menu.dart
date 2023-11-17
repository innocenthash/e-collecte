import 'package:ecollecte/mes_donnees/reseaux_sociaux/reseau_sociaux.dart';
import 'package:ecollecte/pages/pdfview/pdf_view_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  

  List<Map<String, dynamic>> reseauSociaux = ReseauSociaux.reseauSociaux;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Beadabo(e-collecte)',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 200,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                // "assets/images_proprio/proprio.jpg"
                "assets/images_logo/e_appbar.png",
                // fit: BoxFit.cover,
              ),
            ),
          ),
          // Container(
          //   // color: Colors.blue,
          //   alignment: Alignment.center,
          //   child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          //     // Text('mon cv',textAlign:TextAlign.center,) ,
          //     // Text("data")
          //     ElevatedButton(
          //       style: ButtonStyle(
          //           backgroundColor: MaterialStatePropertyAll(Colors.grey[850]),
          //           elevation: MaterialStatePropertyAll(0)),
          //       onPressed: () {
          //         // Navigator.push(
          //         //   context,
          //         //   MaterialPageRoute(
          //         //     builder: (context) => PdfViewScreen(
          //         //         pdfAssetPath:"assets/pdf_cv/CV APMF.pdf"),
          //         //   ),
          //         // );
          //         if (pathPDF.isNotEmpty) {
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //               builder: (context) =>
          //                   PdfViewScreen(pdfAssetPath: pathPDF),
          //             ),
          //           );
          //         }
          //       },
          //       child: Text('Curruculum Vitae'),
          //     ),
          //   ]),
          // ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10),
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              //  margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                color: Colors.amber,
              ),
              child: ListView.separated(
                  itemBuilder: (Context, index) {
                    return ListTile(
                      leading: Container(
                        // color: Colors.blueGrey,
                        height: 100,
                        width: 100,
                        child: Center(
                          child: Text(
                            reseauSociaux[index]['Lien_reseau'],
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      trailing: Container(
                        // color: Colors.blueGrey,
                        height: 100,
                        width: 100,
                        child: reseauSociaux[index]['icon_reseau'],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      indent: 26,
                      endIndent: 24,
                    );
                  },
                  itemCount: reseauSociaux.length),
            ),
          ),
          // Container(
          //   child: Text('data'),
          // )
        ],
      ),
    );
  }
}
