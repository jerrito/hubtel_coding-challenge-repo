import 'package:flutter/material.dart';
import 'package:hubtel_coding_challenge_repo/widgets/bottom_nav.dart';
import 'package:hubtel_coding_challenge_repo/widgets/floating_action_button.dart';
import 'package:hubtel_coding_challenge_repo/widgets/tab_bar.dart';
import 'package:hubtel_coding_challenge_repo/widgets/time_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

        // floating action button
        floatingActionButton: FloatingActionButtonWidget(),

        // bottom nav bars
        bottomNavigationBar: BottomNav(),

        //body
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              // tab bar
              CustomTabBar(
                isSelected: true,
              ),
            ]),
          ),
        ));
  }
}
