import 'package:commerce_blue/presentation/main_page/screen_main_page.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedIndex,
      builder: (context, updatedvalue, child) => BottomNavigationBar(
          onTap: (value) {
            selectedIndex.value = value;
          },
          currentIndex: updatedvalue,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.shade400,
          backgroundColor: const Color.fromARGB(255, 19, 43, 62),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopify_rounded), label: "Orders"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_checkout_sharp),
                label: "My cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz), label: "More"),
          ]),
    );
  }
}
