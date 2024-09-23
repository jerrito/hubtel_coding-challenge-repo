import 'package:flutter/material.dart';

class TypeOfTransaction extends StatelessWidget {
  final bool isFavourited;
  const TypeOfTransaction({super.key, required this.isFavourited});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.indigo.withOpacity(0.2),
              child: const Icon(
                Icons.person,
                color: Colors.indigo,
              ),
            ),
          const SizedBox(
          width: 10,
        ),
        const Text("Personal"),
        const SizedBox(
          width: 10,
        ),
        const Text("."),
        const SizedBox(
          width: 10,
        ),
        const Text("Cool your heart wai"),
        ],
        ),
       isFavourited? const Icon(
          Icons.star,
          color: Colors.yellow,
        ): const SizedBox.shrink()
      ],
    );
  }
}
