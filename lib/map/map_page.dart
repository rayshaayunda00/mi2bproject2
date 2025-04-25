import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Set<Marker> marker = {};

  void _addMarkers() {


    // Marker 3: Jalan Rimbo Data No. 7
    marker.add(
      Marker(
        markerId: const MarkerId("Tempat 3"),
        position: const LatLng(-0.9292519628176235, 100.4566388996547), // titik dekat Bandar Buat
        infoWindow: const InfoWindow(
          title: 'limau manis',
          snippet: 'komplek pemda',
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _addMarkers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Map Flutter"),
      ),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(-0.9292519628176235, 100.4566388996547), // pusat tengah antara semua marker
          zoom: 13.5,
        ),
        markers: marker,
      ),
    );
  }
}