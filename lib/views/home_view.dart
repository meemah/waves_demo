import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // body: _provider.currentScreen,
        // bottomNavigationBar: BottomNavigationBar(
        //     items:const [
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.home),
        //         title: Text("Home")
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.account_circle),
        //         title: Text("Explore")
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.account_circle),
        //         title: Text("Account")
        //       ),
        //     ],
        //     currentIndex: _provider.currenTab,
        //     onTap: (index) {
        //       _provider.currentTab = index;

        );
  }
}
