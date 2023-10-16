import 'package:flutter/material.dart';

class ContainerBodyRev extends StatelessWidget {
  const ContainerBodyRev({
    Key? key,
    required this.containerBodychild,
  }) : super(key: key);

  final Widget containerBodychild;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.91,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(30.0),
          topLeft: Radius.circular(30.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: containerBodychild,
    );
  }
}
