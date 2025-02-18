import 'package:flutter/material.dart';
class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children:  [
        Expanded(child: Divider(color: Colors.black,)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text('Or With', style: TextStyle(fontSize:18,fontWeight: FontWeight.w400),), ),

        Expanded(child: Divider(
          color: Colors.black,
        )),
      ],
    );
  }
}