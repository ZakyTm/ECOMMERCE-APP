import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Ecom App UI"),
      ),
      body: Column(children: [
        //logo
        Image.asset("assets/images/logo_A_letter.png"),

        // title

        //sub title

        //start now button
      ]),
    );
  }
}
