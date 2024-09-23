import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  final bool isSuccessful;
  const StatusWidget({super.key, required this.isSuccessful});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: isSuccessful
              ? Colors.green.withOpacity(0.5)
              : Colors.red.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(isSuccessful ? Icons.safety_check : Icons.cancel),
          const SizedBox(
            width: 10,
          ),
          Text(
            isSuccessful ? "Successful" : "Failed",
            style: TextStyle(color: isSuccessful ? Colors.green : Colors.red),
          ),
        ],
      ),
    );
  }
}
