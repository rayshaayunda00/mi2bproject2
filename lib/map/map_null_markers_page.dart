import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapNullMarkersPage extends StatefulWidget {
  const MapNullMarkersPage({super.key});

  @override
  State<MapNullMarkersPage> createState() => _MapNullMarkersPageState();
}

class _MapNullMarkersPageState extends State<MapNullMarkersPage> {
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _initMarkers();
  }

  void _initMarkers() {
    _markers.addAll([
      Marker(
        markerId: MarkerId("Imelda"),
        position: LatLng(-0.9396890696508747, 100.46565917847389),
        infoWindow: InfoWindow(title: "imed", snippet: "imeldaa"),
      ),
      Marker(
        markerId: MarkerId("Lavin's Guest House"),
        position: LatLng(-0.9277333976824469, 100.36085493928135),
        infoWindow: InfoWindow(title: "Lavin's Guest House", snippet: "Lavin's Guest House"),
      ),
      Marker(
        markerId: MarkerId("Hotel Mercure Padang"),
        position: LatLng(-0.9349874822064701, 100.35354313465626),
        infoWindow: InfoWindow(title: "Hotel Mercure Padang", snippet: "Hotel Mercure Padang"),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multi Peta Marker Lokasi"),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(-0.9349874822064701, 100.35354313465626),
          zoom: 16,
        ),
        markers: _markers,
      ),
    );
  }
}
