import 'package:commerce_blue/application/home/home_bloc.dart';
import 'package:commerce_blue/core/constants/constants.dart';
import 'package:commerce_blue/core/widgets/contaner_widget.dart';

import 'package:commerce_blue/presentation/home/widgets/category_list_widget.dart';
import 'package:commerce_blue/presentation/home/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getAllProducts());
    return Scaffold(
        body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return ContainerBody(
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
                        "Commerce Blue",
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
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border)),
                  ),
                ],
              ),
              const Divider(
                color: Color.fromARGB(255, 19, 43, 62),
              ),
              const CategoryListWidget(),
              const Text(
                "All Products",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 13,
                            crossAxisSpacing: 13,
                            crossAxisCount: 2),
                    itemCount: state.displayProducts.length,
                    itemBuilder: (context, index) => ProductWidget(
                          description: state.displayProducts[index].description!,
                          imageUrl: state.displayProducts[index].image!,
                          title: state.displayProducts[index].title!,
                          price: state.displayProducts[index].price.toString(),
                        )),
              ),
            ],
          ),
        ),
      );
    }));
  }
}
