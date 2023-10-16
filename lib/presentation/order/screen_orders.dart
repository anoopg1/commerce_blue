import 'package:commerce_blue/core/widgets/contaner_widget.dart';
import 'package:flutter/material.dart';

class ScreenOrders extends StatelessWidget {
  const ScreenOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContainerBody(
        containerBodychild: Center(
      child: Text("Screen Orders"),
    ));
  }
}
