import 'package:commerce_blue/core/widgets/contaner_widget.dart';
import 'package:flutter/material.dart';

class ScreenMore extends StatelessWidget {
  const ScreenMore({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerBody(
        containerBodychild: Center(
      child: Text("Screen Orders"),
    ));
  }
}
