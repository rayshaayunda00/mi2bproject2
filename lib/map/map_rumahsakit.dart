import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapRumahsakit extends StatefulWidget {
  const MapRumahsakit({super.key});

  @override
  State<MapRumahsakit> createState() => _MapRumahsakitState();
}

class _MapRumahsakitState extends State<MapRumahsakit> {
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _initMarkers();
  }

  void _initMarkers() {
    _markers.addAll([
      Marker(
        markerId: MarkerId("RS Unand"),
        position: LatLng(-0.9186587, 100.4576043),
        infoWindow: InfoWindow(title: "RS Universitas Andalas", snippet: "Limau Manis, Kec. Pauh, Padang"),
      ),
      Marker(
        markerId: MarkerId("RSUP Djamil"),
        position: LatLng(-0.9408404, 100.3673140),
        infoWindow: InfoWindow(title: "RSUP Dr. M. Djamil", snippet: "Jl. Perintis Kemerdekaan, Padang"),
      ),
      Marker(
        markerId: MarkerId("RS Yos Sudarso"),
        position: LatLng(-0.9349189, 100.3622500),
        infoWindow: InfoWindow(title: "RS Yos Sudarso", snippet: "Jl. S. Parman No. 211, Padang"),
      ),
      Marker(
        markerId: MarkerId("RS Siti Rahmah"),
        position: LatLng(-0.951310, 100.363345),
        infoWindow: InfoWindow(title: "RS Siti Rahmah", snippet: "Jl. By Pass KM 11, Padang"),
      ),
      Marker(
        markerId: MarkerId("RS Ibnu Sina"),
        position: LatLng(-0.945130, 100.374530),
        infoWindow: InfoWindow(title: "RS Ibnu Sina", snippet: "Jl. Raya Siteba, Padang"),
      ),
      Marker(
        markerId: MarkerId("RS Bhayangkara"),
        position: LatLng(-0.922001, 100.388446),
        infoWindow: InfoWindow(title: "RS Bhayangkara", snippet: "Jl. Jati, Kec. Padang Timur, Padang"),
      ),
      Marker(
        markerId: MarkerId("RSUD Padang"),
        position: LatLng(-0.936560, 100.358700),
        infoWindow: InfoWindow(title: "RSUD dr. Rasidin", snippet: "Jl. Gajah Mada No.1, Gunung Pangilun"),
      ),
      Marker(
        markerId: MarkerId("RS Selaguri"),
        position: LatLng(-0.911455, 100.369985),
        infoWindow: InfoWindow(title: "RS Selaguri", snippet: "Jl. Belakang Balok, Padang"),
      ),
      Marker(
        markerId: MarkerId("RS Islam Siti Rahmah"),
        position: LatLng(-0.930510, 100.356720),
        infoWindow: InfoWindow(title: "RS Islam Ibnu Sina", snippet: "Jl. Veteran, Padang"),
      ),
      Marker(
        markerId: MarkerId("RS TK III Reksodiwiryo"),
        position: LatLng(-0.931658, 100.377296),
        infoWindow: InfoWindow(title: "RS Reksodiwiryo", snippet: "Jl. Gajah Mada, Gunung Pangilun"),
      ),
      Marker(
        markerId: MarkerId("RS BMC"),
        position: LatLng(-0.942255, 100.363738),
        infoWindow: InfoWindow(title: "RS BMC", snippet: "Jl. Proklamasi, Padang"),
      ),
      Marker(
        markerId: MarkerId("RS Hermina Padang"),
        position: LatLng(-0.931520, 100.363000),
        infoWindow: InfoWindow(title: "RS Hermina Padang", snippet: "Jl. Proklamasi No.19, Padang"),
      ),
      Marker(
        markerId: MarkerId("RS Mutiara Bunda"),
        position: LatLng(-0.941222, 100.365321),
        infoWindow: InfoWindow(title: "RS Mutiara Bunda", snippet: "Jl. Raya Lubuk Begalung, Padang"),
      ),
      Marker(
        markerId: MarkerId("Padang Eye Center"),
        position: LatLng(-0.943672, 100.354181),
        infoWindow: InfoWindow(title: "Padang Eye Center", snippet: "Jl. Belakang Olo No. 14, Padang"),
      ),
      Marker(
        markerId: MarkerId("RS Aisyiyah"),
        position: LatLng(-0.944510, 100.374100),
        infoWindow: InfoWindow(title: "RS Aisyiyah", snippet: "Jl. Durian Tarung, Padang"),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Peta Rumah Sakit di Padang"),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(-0.9349874, 100.3635431), // tengah kota Padang
          zoom: 13,
        ),
        markers: _markers,
      ),
    );
  }
}
