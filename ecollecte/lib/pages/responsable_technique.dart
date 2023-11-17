import 'package:flutter/material.dart';
// import 'url_';
import 'package:url_launcher/url_launcher.dart';
 import 'package:url_launcher/url_launcher_string.dart';

class ResponsableTechnique extends StatefulWidget {
  const ResponsableTechnique({super.key});
  static const responsableTechniqueRoute = '/responsable_technique';

  @override
  State<ResponsableTechnique> createState() => _ResponsableTechniqueState();
}

class _ResponsableTechniqueState extends State<ResponsableTechnique> {
  // lancerAppelTelephonique(String numeroTelephone) async {
  //   final uri = Uri(scheme: 'tel', path: numeroTelephone);
  //   if (await canLaunchUrlString(uri.toString())) {
  //     await launchUrlString(uri.toString());
  //   } else {
  //     throw 'Impossible de lancer l\'appel : $numeroTelephone';
  //   }
  // }

  Future<void> lancerAppelTelephonique() async {
    String url = "tel:+261328766122";
    final uri = Uri(scheme: 'tel', path: "+261328766122");
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // ouvrirMessenger(String messengerUrl) async {
  //   final uri = messengerUrl;
  //   const installMessenger = "https://www.messenger.com/download?locale=fr_FR";
  //   if (await canLaunchUrlString(uri)) {
  //     await launchUrlString(uri);
  //   } else {
  //     if (await canLaunchUrlString(installMessenger)) {
  //       await launchUrlString(installMessenger);
  //     } else {
  //       throw 'Impossible d\'ouvrir messenger';
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nos contact"),
      ),
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Color.fromARGB(255, 255, 255, 255),
              height: 200,
              width: double.infinity,
              margin: const EdgeInsets.all(5),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  child: Image.asset(
                    arguments["image_responsable"],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Text(
              //   arguments["nom_responsable"],
              // ),
            ),
          ),
          Container(
            child: Card(
              // color: Colors.purple,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FloatingActionButton.small(
                      elevation: 0,
                      backgroundColor: const Color.fromRGBO(0, 215, 0, 1.0),
                      onPressed: () {
                        lancerAppelTelephonique();
                        //  arguments["numero_responsable"]
                      },
                      child: const Icon(Icons.call),
                    ),
                    FloatingActionButton.small(
                      elevation: 0,
                      backgroundColor: const Color.fromRGBO(255, 215, 0, 1.0),
                      onPressed: () {
                        // ouvrirMessenger(arguments["messenger_responsable"]);
                      },
                      child: const Icon(Icons.offline_bolt),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
