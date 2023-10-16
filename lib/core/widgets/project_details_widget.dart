import 'package:commerce_blue/core/constants/constants.dart';
import 'package:commerce_blue/core/widgets/container_body_rev.dart';
import 'package:flutter/material.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget(
      {super.key,
      required this.imageUrl,
      required this.price,
      required this.title,
      required this.description});
  final String imageUrl;
  final String price;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.040,
                    width: MediaQuery.of(context).size.height * 0.050,
                    decoration: BoxDecoration(
                        //  color: Colors.amber,
                        borderRadius: BorderRadius.circular(13),
                        border: Border.all(width: 1.5, color: Colors.grey)),
                    child: const Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ContainerBodyRev(
                containerBodychild: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      kheight10,
                      Container(
                        height: MediaQuery.of(context).size.height * 0.40,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image:
                                DecorationImage(image: NetworkImage(imageUrl))),
                      ),
                      kheight20,
                      Text(
                        price,
                        style: const TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.w600,
                            fontSize: 28),
                      ),
                      kheight10,
                      Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      kheight10,
                      Text(
                        description,
                        textAlign: TextAlign.justify,
                      ),
                      kheight10,
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 19, 43, 62),
                          // Background color
                        ),
                        child: const Text("Add to wishlist"),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                              255, 19, 43, 62), // Background color
                        ),
                        child: const Text("Add to cart"),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
