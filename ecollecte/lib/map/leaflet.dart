import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class Leaflet extends StatefulWidget {
  const Leaflet({super.key});
  static const leafletMapsRoute = '/leaflet';

  @override
  State<Leaflet> createState() => _LeafletState();
}

class _LeafletState extends State<Leaflet> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> LongLat =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text('notre position'),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(LongLat["long"], LongLat["lat"]),
          zoom: 14,
        ),
        nonRotatedChildren: [
          RichAttributionWidget(
            attributions: [
              TextSourceAttribution(
                'OpenStreetMap contributors',
                onTap: () =>
                    launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
              ),
            ],
          ),
        ],
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
          CircleLayer(
            circles: [
              CircleMarker(
                point: LatLng(LongLat["long"], LongLat["lat"]),
                radius: 10000,
                useRadiusInMeter: true,
                color: Color.fromRGBO(0, 0, 255, 128),
              //  color: const Color.fromARGB(255, 200, 228, 251), // Changez la couleur du cercle
              borderColor: Colors.black, // Changez la couleur de la bordure si cela est pris en charge
              borderStrokeWidth: 2.0, 
              ),
            ],
          ),
          MarkerLayer(
  markers: [
    Marker(
      point: LatLng(LongLat["long"], LongLat["lat"]),
      width: 80,
      height: 80,
      builder: (context) => FlutterLogo(),
    ),
  ],
),
        ],
      ),
    );
  }
}
