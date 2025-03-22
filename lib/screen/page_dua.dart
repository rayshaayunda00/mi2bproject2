import 'package:flutter/material.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page dua', style: TextStyle(color: Colors.white),),

        backgroundColor: Colors.pink[900],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.home,
              size: 35,
              color: Colors.green,
            ),

            Icon(
              Icons.spa,
              size: 35,
              color: Colors.red,
            ),

            Icon(
              Icons.phone,
              size: 35,
              color: Colors.blue,
            ),
            Icon(
              Icons.cloudy_snowing,
              size: 35,
              color: Colors.pink,
            ),

          ],
        ),
      ),
    );
  }
}