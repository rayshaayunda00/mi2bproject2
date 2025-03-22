import 'package:flutter/material.dart';

class PageGet extends StatelessWidget {
  //constructor
  final int index;
  const PageGet(this.index, {super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Data List ke $index',
          style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: Text('Detail Berita ke : $index'),
      ),
    );
  }
}