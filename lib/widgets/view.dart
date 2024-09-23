import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge_repo/widgets/full_info.dart';
import 'package:hubtel_coding_challenge_repo/widgets/info_widget.dart';
import 'package:hubtel_coding_challenge_repo/widgets/time_widget.dart';

class ViewPage extends StatefulWidget {
  final TabController controller;
  const ViewPage({super.key, required this.controller});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        controller: widget.controller,
        children: const [
        
        //index 0 of tabs
         FullInfoWidget(),

         //index 1 of tabs
         SizedBox()

                 ],
      ),
    );
  }
}
