import 'package:commerce_blue/core/constants/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              
              Icon(
                Icons.shopping_cart_checkout_rounded,
                color: Color.fromARGB(255, 19, 43, 62),
              ),
              Kwidth10,
              Text(
                "Commerce Blue",
                style: TextStyle(
                  color: Color.fromARGB(255, 19, 43, 62),
                  fontSize: 35,
                ),
              ),
            ],
          ),
        ));
  }
}
