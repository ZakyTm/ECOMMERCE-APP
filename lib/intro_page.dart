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
      body: Center(
        child: Column(children: [
          //logo
          Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset(
              "assets/images/logo_A_letter.jpeg",
              height: 240,
            ),
          ),

          const SizedBox(height: 48),

          // title
          const Text("Just Do It",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),

          //sub title
          const Text(
              "Brand new sneakers & shoes , we help you to find the best that suits you",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey)),
          //start now button
        ]),
      ),
    );
  }
}
