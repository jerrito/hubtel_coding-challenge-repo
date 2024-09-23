import 'package:flutter/material.dart';

class SearchRow extends StatelessWidget {
  const SearchRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: MediaQuery.of(context).size.width-50,
          color: Colors.grey,
          child: const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
          
            ),
            
          ),
        ),
        const Icon(Icons.menu_outlined)
      ],
    );
  }
}