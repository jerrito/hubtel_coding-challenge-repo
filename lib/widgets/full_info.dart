import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge_repo/widgets/info_widget.dart';
import 'package:hubtel_coding_challenge_repo/widgets/search.dart';
import 'package:hubtel_coding_challenge_repo/widgets/time_widget.dart';

class FullInfoWidget extends StatelessWidget {
  const FullInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SearchRow(),
        //time widget
        DateWidget(time: "May 24, 2022"),
        InfoWidget(
          url:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXh5B2J5q_faV5CBjwudUHv6iSdx34rhk0eA&s",
          name: "Emmanuel Rockson Kwabena Ebo",
          isSuccessful: true,
          phoneNumber: "0241 4949 44",
          amount: "500",
          time: '14:45 PM',
        ),
        InfoWidget(
          url:
              "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Absa_Logo.svg/1200px-Absa_Logo.svg.png",
          name: "Absa Bank",
          isSuccessful: false,
          phoneNumber: "0241 4949 44",
          amount: "500",
          time: '14:45 PM',
        ),
        DateWidget(time: "May 24, 2022"),
      ],
    );
  }
}
