import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(onPressed: (){},
        child: Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5)
          ),
          child:const Row(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Icon(Icons.add),
            SizedBox(width: 10,),
            Text("Send New")
           ], 
          ) ,
        ),);
  }
}