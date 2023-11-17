import 'package:flutter/material.dart';

class DescriptionProvince extends StatefulWidget {
  const DescriptionProvince({super.key});
  static const descriptionProvinceRoute = '/description_province';

  @override
  State<DescriptionProvince> createState() => _DescriptionProvinceState();
}

class _DescriptionProvinceState extends State<DescriptionProvince> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Map<String, dynamic> arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text("Province de ${arguments["nom_province"]}"),
        
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 10),
                 decoration: BoxDecoration(
                color: Colors.amberAccent,
                border: Border.all(
                  color: Colors.white,style: BorderStyle.solid , width: 3
                ),
                borderRadius: BorderRadius.circular(10)
              ),
            height: 200,
            width: double.infinity,
            child: Image.asset(arguments["image_place"]),
          ),
          Card(
            child: Container(
              decoration: BoxDecoration(
                // color: Colors.amberAccent,
                border: Border.all(
                  color: Colors.white,style: BorderStyle.solid , width: 3
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              // height:size.height ,
              // width:size.width ,
              child: Text(
               arguments["description_province"],
                style: TextStyle(height: 1.5),
                textAlign: TextAlign.justify,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
