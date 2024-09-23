import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge_repo/widgets/status_widget.dart';
import 'package:hubtel_coding_challenge_repo/widgets/type.dart';

class InfoWidget extends StatelessWidget {
  final String time, url, name,phoneNumber,amount;
  final bool isSuccessful;
  const InfoWidget(
      {super.key, required this.time, required this.url, required this.name, required this.isSuccessful, required this.phoneNumber, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.grey.withOpacity(0.6),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Text(time),
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(url),
                ),
                Column(
                  children: [
                    Text(name),
                     Text(phoneNumber,style:  const TextStyle(
                  fontSize: 14,
                ),),
                  ],
                ),
                Column(
                  children: [
                    StatusWidget(isSuccessful: isSuccessful),
                     Text("GHS $amount",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),)
                  ],
                ),
                
              ],
            ),
            VerticalDivider(
              width: double.infinity,
              color: Colors.grey.withOpacity(0.6),
            ),

            TypeOfTransaction(
              isFavourited: isSuccessful,
            )

          
          ],
        ),
      ),
    );
  }
}
