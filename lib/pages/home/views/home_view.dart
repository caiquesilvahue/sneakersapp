import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> bottomNavigationBarItem =
        const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.menu),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: '',
        tooltip: '',
      ),
    ];
    List<Widget> homePages = [
      Container(
        color: Colors.pink,
      ),
      Container(
        color: Colors.orange,
      ),
      Container(
        color: Colors.blue,
      ),
    ];
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: bottomNavigationBarItem,
          currentIndex: controller.selectedIndex.value,
          selectedItemColor: Colors.amber[800],
          onTap: controller.onItemTapped,
        ),
      ),
      body: Obx(
        () => homePages[controller.selectedIndex.value],
      ),
    );
  }
}
