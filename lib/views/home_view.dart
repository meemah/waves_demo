import 'package:flutter/material.dart';

import 'package:waves/views/wallet_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const WalletView(),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              const BottomNavigationBarItem(
                  icon: Icon(Icons.wallet), label: "wallet"),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.repeat), label: "repeat"),
              BottomNavigationBarItem(
                  icon: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(2)),
                      child: Icon(
                        Icons.add,
                        color: Colors.blue.shade800,
                      )),
                  label: "add"),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.menu), label: "menu"),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "settings"),
            ],
            currentIndex: 0,
            onTap: (index) {}));
  }
}
