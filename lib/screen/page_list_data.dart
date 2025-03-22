import 'package:flutter/material.dart';
import 'package:mi2bproject/screen/page_get_data.dart';

class PageListData extends StatelessWidget {
  const PageListData({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('page list data'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index){
          return ListTile(
            title: Text('judul berita $index'),
            subtitle: Text('detaul berita $index'),
            onTap: (){


              Navigator.push(context, MaterialPageRoute(builder: (context)
              => PageGet(index)
              ));
            },
          );
        },
      )
    );
  }
}