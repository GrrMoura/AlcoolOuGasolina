import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        SizedBox(
          height: 80,
          child: Image.asset("assets/images/aog-white.png"),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Ácool ou Gasolina",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: "Big Shoulders Display"),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
