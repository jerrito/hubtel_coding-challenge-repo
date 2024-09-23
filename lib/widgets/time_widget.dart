import 'package:flutter/material.dart';

class DateWidget extends StatelessWidget {
  final String time;
  const DateWidget({super.key, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Text(time),
    );
  }
}
