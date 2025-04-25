import 'package:flutter/material.dart';
import 'package:mi2bproject/map/map_null_markers_page.dart';
import 'package:mi2bproject/map/map_page.dart';
import 'package:mi2bproject/map/map_rumahsakit.dart';
import 'package:mi2bproject/nav_bar/page_search_list.dart';
import 'package:mi2bproject/nav_bar/page_tab_bar.dart';
import 'package:mi2bproject/screen/latihan2/page_grid_dosen.dart';
import 'package:mi2bproject/screen/page_cache_image.dart';
import 'package:mi2bproject/screen/page_dua.dart';
import 'package:mi2bproject/screen/page_gambar.dart';
import 'package:mi2bproject/screen/page_notification.dart';
import 'package:mi2bproject/screen/page_satu.dart';
import 'package:mi2bproject/screen/page_simple_login.dart';
import 'package:mi2bproject/screen/page_tiga.dart';
import 'package:mi2bproject/screen/page_empat.dart';
import 'package:mi2bproject/screen/pege_url_image.dart';
import 'package:mi2bproject/screen/page_list_data.dart';
import 'package:mi2bproject/screen/latihan_form/page_register.dart';
import 'package:mi2bproject/latihan22/user_data.dart';
import 'package:mi2bproject/latihan22/page_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        useMaterial3: true,
      ),
      home: const PageOne(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Aplikasi Pertama',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pinkAccent,
      ),
      body: SingleChildScrollView(
        child: Center( // Membuat widget utama berada di tengah
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Vertikal center
              crossAxisAlignment: CrossAxisAlignment.center, // Horizontal center
              children: [
                const SizedBox(height: 20),
                const Text("Selamat Datang di Flutter App pertama Mi2b raysha"),

                _buildButton(context, 'Page 2', const PageDua()),
                _buildButton(context, 'Page 3', const PageTiga()),
                _buildButton(context, 'Page 4', const PageEmpat()),
                _buildButton(context, 'Page gambar', const PageGambar()),
                _buildButton(context, 'Page Url Image', const PageUrl()),
                _buildButton(context, 'Page cache image', const PageChache()),
                _buildButton(context, 'Page notification', const PageNotif()),
                _buildButton(context, 'Page list', const PageListData()),
                _buildButton(context, 'Page Login', const PageSimpleLogin()),
                _buildButton(context, 'Tab Bar', const PageTabBar()),
                _buildButton(context, 'Latihan Form', const PageTabBar()),
                _buildButton(context, 'Page form dosen', const PageRegister()),
                _buildButton(context, 'Latihan22', const SplashScreen()),
                _buildButton(context, 'Search List', const PageSearchList()),
                _buildButton(context, 'Map', const MapPage()),
                _buildButton(context, 'Map Null Marker', const MapNullMarkersPage()),
                _buildButton(context, 'Map RS', const MapRumahsakit()),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, Widget page) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8), // Jarak antar tombol
      child: MaterialButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        color: Colors.pinkAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12), // Padding dalam tombol
          child: Text(
            text,
            style: const TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
