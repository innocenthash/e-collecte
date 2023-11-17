import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ReseauSociaux {
  static List<Map<String, dynamic>> reseauSociaux = [
    {
      "Lien_reseau": "facebook",
      "icon_reseau": IconButton(
        icon: Icon(MdiIcons.facebook),
       color: Color.fromARGB(255, 255, 255, 255),
        onPressed: () async {
          final uri = "";
          const installMessenger =
              "https://www.messenger.com/download?locale=fr_FR";
          if (await canLaunchUrlString(uri)) {
            await launchUrlString(uri);
          } else {
            if (await canLaunchUrlString(installMessenger)) {
              await launchUrlString(installMessenger);
            } else {
              throw 'Impossible d\'ouvrir messenger';
            }
          }
        },
      ),
    },
    {
      "Lien_reseau": "Instagram",
      "icon_reseau": IconButton(
        icon: Icon(MdiIcons.instagram),
         color: Color.fromARGB(255, 255, 255, 255),
        onPressed: () async {
          final uri = "";
          const installMessenger =
              "https://www.messenger.com/download?locale=fr_FR";
          if (await canLaunchUrlString(uri)) {
            await launchUrlString(uri);
          } else {
            if (await canLaunchUrlString(installMessenger)) {
              await launchUrlString(installMessenger);
            } else {
              throw 'Impossible d\'ouvrir messenger';
            }
          }
        },
      ),
    },
    {
      "Lien_reseau": "WhatsApp",
      // "icon_reseau": Icon(MdiIcons.whatsapp),
       "icon_reseau": IconButton(
        icon: Icon(MdiIcons.whatsapp),
         color: Color.fromARGB(255, 255, 255, 255),
        onPressed: () async {
          final uri = "";
          const installMessenger =
              "https://www.messenger.com/download?locale=fr_FR";
          if (await canLaunchUrlString(uri)) {
            await launchUrlString(uri);
          } else {
            if (await canLaunchUrlString(installMessenger)) {
              await launchUrlString(installMessenger);
            } else {
              throw 'Impossible d\'ouvrir messenger';
            }
          }
        },
      ),
    },
    {
      "Lien_reseau": "Twitter",
      "icon_reseau": IconButton(
        icon: Icon(MdiIcons.twitter),
         color: Color.fromARGB(255, 255, 255, 255),
        onPressed: () async {
          final uri = "";
          const installMessenger =
              "https://www.messenger.com/download?locale=fr_FR";
          if (await canLaunchUrlString(uri)) {
            await launchUrlString(uri);
          } else {
            if (await canLaunchUrlString(installMessenger)) {
              await launchUrlString(installMessenger);
            } else {
              throw 'Impossible d\'ouvrir messenger';
            }
          }
        },
      ),
    },
    {
      "Lien_reseau": "Gmail",
      "icon_reseau": IconButton(
        icon: Icon(MdiIcons.gmail),
         color: Color.fromARGB(255, 255, 255, 255),
        onPressed: () async {
          final uri = "";
          const installMessenger =
              "https://www.messenger.com/download?locale=fr_FR";
          if (await canLaunchUrlString(uri)) {
            await launchUrlString(uri);
          } else {
            if (await canLaunchUrlString(installMessenger)) {
              await launchUrlString(installMessenger);
            } else {
              throw 'Impossible d\'ouvrir messenger';
            }
          }
        },
      ),
    },
  ];
}
