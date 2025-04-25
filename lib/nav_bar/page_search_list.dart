import 'package:flutter/material.dart';

class PageSearchList extends StatefulWidget {
  const PageSearchList({super.key});

  @override
  State<PageSearchList> createState() => _PageSearchListState();
}

class _PageSearchListState extends State<PageSearchList> {
  //deklarasi item
  List<String> listDevice = [
    "Iphone",
    "Xiaomi",
    "Oppo",
    "Vivo",
    "Motorola",
    "Apple",
    "Samsung",
    "Realme",
    "Ipad",
    "iWatch",
    "Tablet",
  ];
  bool isCari = true; //status pencarian aktif / tidak
  List<String> filterData = []; //untuk filter list
  TextEditingController txtCari = TextEditingController(); // Searching field

  _PageSearchListState() {
    txtCari.addListener(() {
      //jika pencarian kosong
      if (txtCari.text.isEmpty) {
        setState(() {
          isCari = true;
          txtCari.text = "";
        });
      } else {
        //kalau tidak kosong
        setState(() {
          isCari = false;
          txtCari.text != "";
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search List"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: txtCari,
              decoration: InputDecoration(
                  hintText: "Search",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                  ),
                  fillColor: Colors.lightGreen.withOpacity(0.1),
                  filled: true
              ),
            ),
            isCari ? Expanded(
              child: ListView.builder(
                itemCount: listDevice.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(listDevice[index]),
                  );
                },
              ),
            ) : CreateListView(),
          ],

        ),
      ),
    );
  }


  Widget CreateListView() {
    filterData = [];
    for (int i = 0; i<listDevice.length; i++){
      var item = listDevice[i];
      if(item.toLowerCase().contains(txtCari.text.toLowerCase())){
        filterData.add(item);
      }
    }
    return HasilSearch();
  }
  Widget HasilSearch(){
    return Expanded(
      child: ListView.builder(
        itemCount: filterData.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(filterData[index]),
          );
        },
      ),
    );
  }
}