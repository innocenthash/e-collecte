import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  static const secondPage = "second_page";
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    
   List<dynamic>? arguments = ModalRoute.of(context)!.settings.arguments as List<dynamic>?;

    int nombre = arguments?[0];
    return Scaffold(
      appBar: AppBar(
        title: Text(nombre.toString()),
      ),
    );
  }
}
