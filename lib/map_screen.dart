import 'package:flutter/material.dart';

import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


class MapScreen extends StatefulWidget {
  const MapScreen({super.key,
  required this.Latitude,
    required this.Longitude,
  });

  final String Latitude;
  final String Longitude;

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  // String lati;
  // String longi;


 // LatLng point = LatLng(23.765027, 90.430152);
  //LatLng point = LatLng(double.parse(widget.Latitude), double.parse(widget.Longitude));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: const Text('S U S T  Bus Tracker'),
          centerTitle: true,
          leading: const Icon(Icons.menu),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/logo.png',
              height:35.0,
              width: 35.0,
              ),
            )
          ],
        ),
        body: FlutterMap(
          options: MapOptions(
            //center: point,
            center: LatLng(double.parse(widget.Latitude), double.parse(widget.Longitude)),
            zoom: 17.0,
          ),

          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
            MarkerLayer(
              markers: [
                Marker(
                  width: 50.0,
                  height: 50.0,
                  //point: point,
                  point: LatLng(double.parse(widget.Latitude), double.parse(widget.Longitude)),
                  builder: (ctx) => Container(

                      child:  Image.asset('assets/images/bus_point.png', )
                  ),
                )
              ],
            )
          ],
        )
    );
  }
}