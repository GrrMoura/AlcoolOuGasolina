import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class Input extends StatelessWidget {
  var ctrl =
      MoneyMaskedTextController(decimalSeparator: '.', thousandSeparator: ",");

  var text = "";
  Input(this.ctrl, this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          alignment: Alignment.centerRight,
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontFamily: "Big Shoulders Display"),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: TextFormField(
            controller: ctrl,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(border: InputBorder.none),
            style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: "Big Shoulders Display"),
          ),
        ),
      ],
    );
  }
}
