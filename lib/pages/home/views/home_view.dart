import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sneakerapp/pages/home/widgets/home_page_widget.dart';

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
      const Center(
        child: Text(
          'Menu Config',
          style: TextStyle(fontSize: 40),
        ),
      ),
      const HomePageWidget(),
      const Center(
        child: Text(
          'Car Shopping',
          style: TextStyle(fontSize: 40),
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('SneakerApp'),
        centerTitle: true,
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: bottomNavigationBarItem,
          currentIndex: controller.selectedIndex.value,
          onTap: controller.onItemTapped,
        ),
      ),
      body: Obx(
        () => SafeArea(child: homePages[controller.selectedIndex.value]),
      ),
    );
  }
}
