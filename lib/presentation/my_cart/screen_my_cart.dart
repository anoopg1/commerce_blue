import 'package:commerce_blue/core/constants/constants.dart';
import 'package:commerce_blue/core/widgets/contaner_widget.dart';
import 'package:flutter/material.dart';

class ScreenMyCart extends StatelessWidget {
  const ScreenMyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ContainerBody(
            containerBodychild: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kheight30,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.shopping_cart_checkout_outlined,
                                color: Color.fromARGB(255, 19, 43, 62),
                              ),
                              Kwidth5,
                              Text(
                                "My Cart",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 19, 43, 62),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Transform.scale(
                            scale: 1,
                            child: IconButton(
                                onPressed: () {}, icon: Icon(Icons.search)),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 19, 43, 62),
                      )
                    ]))));
  }
}
