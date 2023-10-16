import 'package:commerce_blue/presentation/home/screen_home.dart';
import 'package:commerce_blue/presentation/main_page/widgets/bottomnavigation.dart';
import 'package:commerce_blue/presentation/more/screen_more.dart';
import 'package:commerce_blue/presentation/my_cart/screen_my_cart.dart';
import 'package:commerce_blue/presentation/order/screen_orders.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> selectedIndex = ValueNotifier(0);
final homePages = [ScreenHome(), ScreenOrders(), ScreenMyCart(), ScreenMore()];

class ScreenMainPage extends StatelessWidget {
  const ScreenMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedIndex,
      builder: (context, updatedvalue, child) => Scaffold(
        body: homePages[updatedvalue],
        bottomNavigationBar: BottomNavigationWidget(),
      ),
    );
  }
}
