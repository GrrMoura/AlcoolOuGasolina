import 'package:flutter/material.dart';

import 'loadingBnt.widgets.dart';

class Sucess extends StatelessWidget {
  var result = "";
  VoidCallback reset;

  Sucess(this.reset, this.result, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            result,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 40,
                fontFamily: "Big Shoulders Display"),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          LoadingBnt("Calcular Novamente", false, true, reset)
        ],
      ),
    );
  }
}
