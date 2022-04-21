import 'package:flutter/material.dart';

class _CustomBottomNavigationBarItem {
  final String label;
  final String image;
  _CustomBottomNavigationBarItem({
    required this.label,
    required this.image,
  });
}

class MainPageViewModel extends ChangeNotifier {
  int currentPage = 0;
  final bottomNavigationBarItems = <_CustomBottomNavigationBarItem>[
    _CustomBottomNavigationBarItem(
      image: "assets/images/bar1.png",
      label: "Home",
    ),
    _CustomBottomNavigationBarItem(
      image: "assets/images/bar2.png",
      label: "Qidirish",
    ),
    _CustomBottomNavigationBarItem(
      image: "assets/images/bar3.png",
      label: "Savat",
    ),
    _CustomBottomNavigationBarItem(
      image: "assets/images/bar4.png",
      label: "Yoqtirganlar",
    ),
    _CustomBottomNavigationBarItem(
      image: "assets/images/bar5.png",
      label: "Profil",
    ),
  ];

  void changePage(int index) {
    currentPage = index;
    notifyListeners();
  }
}
