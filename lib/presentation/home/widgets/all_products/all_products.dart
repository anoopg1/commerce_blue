import 'package:commerce_blue/application/home/home_bloc.dart';
import 'package:commerce_blue/presentation/home/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllProductsWidget extends StatelessWidget {
  const AllProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getAllProducts());
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            const Text(
              "All Products",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 13,
                      crossAxisSpacing: 13,
                      crossAxisCount: 2),
                  itemCount: state.allproducts.length,
                  itemBuilder: (context, index) => ProductWidget(
                        imageUrl: state.allproducts[index].image!,
                        title: state.allproducts[index].title!,
                        price: state.allproducts[index].price.toString(),
                        description: state.allproducts[index].description!,
                      )),
            ),
          ],
        );
      },
    );
  }
}
