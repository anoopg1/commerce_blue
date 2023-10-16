import 'package:commerce_blue/application/home/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: Color.fromARGB(255, 19, 43, 62),
              ),
              onPressed: () {
                BlocProvider.of<HomeBloc>(context)
                    .add(const HomeEvent.getAllProducts());
              },
              child: const Text(
                "All Products",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: Color.fromARGB(255, 19, 43, 62),
              ),
              onPressed: () {
                BlocProvider.of<HomeBloc>(context)
                    .add(const HomeEvent.getElectronicsProducts());
              },
              child: const Text(
                "Electronics",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: Color.fromARGB(255, 19, 43, 62),
              ),
              onPressed: () {
                BlocProvider.of<HomeBloc>(context)
                    .add(const HomeEvent.getJeweleryProducts());
              },
              child: const Text(
                "Jewellery",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: Color.fromARGB(255, 19, 43, 62),
              ),
              onPressed: () {
                BlocProvider.of<HomeBloc>(context)
                    .add(const HomeEvent.getMenClothingProducts());
              },
              child: const Text(
                "Men's Cloting",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: Color.fromARGB(255, 19, 43, 62),
              ),
              onPressed: () {
                BlocProvider.of<HomeBloc>(context)
                    .add(const HomeEvent.getWomenClothingProducts());
              },
              child: const Text(
                "Women's Clothing",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
