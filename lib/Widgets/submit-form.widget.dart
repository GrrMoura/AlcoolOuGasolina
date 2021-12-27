import 'package:aog/Widgets/Input-.widget.dart';
import 'package:aog/Widgets/loadingBnt.widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class SubmitForm extends StatelessWidget {
  var gasController =
      MoneyMaskedTextController(decimalSeparator: '.', thousandSeparator: ",");
  var alcController =
      MoneyMaskedTextController(decimalSeparator: '.', thousandSeparator: ",");
  var busy = false;
  VoidCallback func;

  SubmitForm(this.gasController, this.alcController, this.func, this.busy,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Input(gasController, "Gasolina"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Input(alcController, "Ácool"),
        ),
        const SizedBox(
          height: 25,
        ),
        LoadingBnt("Calcular", busy, false, func)
        //botao loading
      ],
    );
  }
}
