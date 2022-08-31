import 'package:flutter/material.dart';
import 'package:waves/views/wallet_view.dart';

class HomeViewmodel extends ChangeNotifier {
  int _currentTab = 0;
  List<Widget> screens = [const WalletView(), Container(), Container()];

  set currentTab(int tab) {
    _currentTab = tab;
    notifyListeners();
  }

  get currenTab => _currentTab;

  get currentScreen => screens[_currentTab];
}
