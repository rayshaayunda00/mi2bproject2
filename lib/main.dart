import 'package:flutter/material.dart';
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
import 'package:mi2bproject/screen/page_simple_login.dart';

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
        title: Text(
          'Aplikasi Pertama',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Selamat Datang di Flutter App pertama Mi2b raysha"),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageSatu()));
              },
              color: Colors.pinkAccent[100],
              child: Text(
                'Page 1',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageDua()));
                },
                elevation: 18.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Color(0x7958089E),
                clipBehavior: Clip.antiAlias,
                child: Text(
                  'Page 2',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageTiga()));
              },
              color: Colors.pinkAccent[100],
              child: Text(
                'Page 3',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageEmpat()));
              },
              color: Colors.pinkAccent[100],
              child: Text(
                'Page 4',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageGambar()));
              },
              color: Colors.pinkAccent[100],
              child: Text(
                'Page gambar',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageUrl()));
              },
              color: Colors.pinkAccent[100],
              child: Text(
                'Page Url Image',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageChache()));
              },
              color: Colors.pinkAccent[100],
              child: Text(
                'Page cache image',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageNotif()));
              },
              color: Colors.pinkAccent[100],
              child: Text(
                'Page notification',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageListData()));
              },
              color: Colors.pinkAccent[100],
              child: Text(
                'Page list',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageSimpleLogin()),
                );
              },
              color: Colors.pinkAccent[100], // Warna tombol
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Lengkungan sudut
              ),
              elevation: 5, // Efek bayangan
              hoverElevation: 12, // Meningkatkan bayangan saat hover (khusus desktop)
              child: Text(
                'Page Login',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageTabBar()));
              },
              color: Colors.pinkAccent[100],
              child: Text(
                'Tab Bar',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageTabBar()));
              },
              color: Colors.pinkAccent[100],
              child: Text(
                'latihan_form',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageGridDosen()));
              },
              color: Colors.pinkAccent[100],
              child: Text(
                'page grid dosen',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageRegister()));
              },
              color: Colors.pinkAccent[100],
              child: Text(
                'page form dosen',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SplashScreen()),
                );
              },
              color: Colors.pinkAccent[100],
              child: Text(
                'latihan22',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),


          ],
        ),

          //child :  cuma bisa nampung 1 widget
          //children : bisa nampung beberapa widget
      ),
        );
    }
}