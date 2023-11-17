import 'package:ecollecte/mes_donnees/apropos/listes_images_ceo.dart';
import 'package:ecollecte/mes_donnees/apropos/mon_apropos.dart';
import 'package:flutter/material.dart';
import 'package:ecollecte/pages/pdfview/pdf_view_screen.dart';
// import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class Apropos extends StatefulWidget {
  const Apropos({super.key});

  static const AproposRoute = "/apropos";

  @override
  State<Apropos> createState() => _AproposState();
}

class _AproposState extends State<Apropos> {
  String pathPDF = "";

  @override
  void initState() {
    super.initState();
    fromAsset('assets/pdf_cv/CV APMF.pdf', 'CV APMF.pdf').then((f) {
      setState(() {
        pathPDF = f.path;
      });
    });
  }

  Future<File> fromAsset(String asset, String filename) async {
    Completer<File> completer = Completer();
    try {
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/$filename");
      var data = await rootBundle.load(asset);
      var bytes = data.buffer.asUint8List();
      await file.writeAsBytes(bytes, flush: true);
      completer.complete(file);
    } catch (e) {
      throw Exception('Error parsing asset file!');
    }

    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listesImagesCeo =
        ListesImagesCeo.listesImagesCeo;
    Map<String, dynamic> monApropos = MonApropos.monApropos;
    return Scaffold(
      appBar: AppBar(
        title: Text('Bibliographie'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              color: Color.fromARGB(255, 222, 222, 222),
              width: double.infinity,
              child: CustomScrollView(
                scrollDirection: Axis.horizontal,
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate(
                      List.generate(
                        listesImagesCeo.length,
                        (index) => Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  width: 3,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(10),
                              // color: Colors.amber,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                listesImagesCeo[index]['image_çeo'],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  // color: Colors.amber,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'À propos de moi',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    monApropos['apropos'],
                    style: TextStyle(height: 1.5),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 2),
                  child: ElevatedButton(
                    
                    style: ButtonStyle(

                        // margin: MaterialStatePropertyAll(
                        //   EdgeInsets.only(bottom: 2),
                        // ),
                        minimumSize: MaterialStatePropertyAll(Size(400, 50)),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.purple),
                        elevation: MaterialStatePropertyAll(0)),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => PdfViewScreen(
                      //         pdfAssetPath:"assets/pdf_cv/CV APMF.pdf"),
                      //   ),
                      // );
                      if (pathPDF.isNotEmpty) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                PdfViewScreen(pdfAssetPath: pathPDF),
                          ),
                        );
                      }
                    },
                    child: Text('Curruculum Vitae'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
