import 'package:flutter/material.dart';
import 'package:mi2bproject/Screen/latihan_form//page_register.dart';

class PageTab extends StatefulWidget {
  const PageTab({super.key});

  @override
  State<PageTab> createState() => _PageTabBarState();
}

class _PageTabBarState extends State<PageTab> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController =  TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
        title: Text("Nav bar", style: TextStyle(color: Colors.white),),
      ),
      body: TabBarView(controller: tabController,children: [PageRegister()]),
      bottomNavigationBar: BottomAppBar(
        child: TabBar(controller: tabController,tabs: [
          Tab(text: 'From Register', icon: Icon(Icons.input),),
        ],),
      ),
    );
  }
}