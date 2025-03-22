import 'package:flutter/material.dart';

class PageUrl extends StatelessWidget {
  const PageUrl({super.key});


  //untuk image asset
  //buat directori
  //masukin gambar
  //update di puspuck.yaml
  //kita pub get atau pub upgrade

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('URL IMAGE'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6zicR6ExuKdewdhwxZtp98oRIonyNRGRqfA&s'),
      ),
    );
  }
}