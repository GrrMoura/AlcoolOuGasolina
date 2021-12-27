import 'package:aog/Widgets/Sucess.widgets.dart';
import 'package:aog/Widgets/logo.widget.dart';
import 'package:aog/Widgets/submit-form.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var alcController = MoneyMaskedTextController(
      leftSymbol: 'R\$ ', decimalSeparator: '.', thousandSeparator: ",");
  var gasController = MoneyMaskedTextController(
      leftSymbol: 'R\$ ', decimalSeparator: '.', thousandSeparator: ",");

  Color _color = Colors.deepPurple;

  var _busy = false;
  var _completed = false;
  var _resultText = "Compensa utilizar álcool";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          const Logo(),
          _completed
              ? Sucess(reset, _resultText)
              : SubmitForm(gasController, alcController, calculate, _busy),
        ],
      ),
    );
  }

  Future calculate() {
    debugPrint("NUNCA DESISTA DOS TEUS SONHOS!");
    double alc = alcController.numberValue;
    double gas = gasController.numberValue;
    double res = alc / gas;
    setState(() {
      _color = Colors.deepPurpleAccent;
      _completed = false;
      _busy = true;
    });

    return Future.delayed(
        const Duration(seconds: 1),
        () => {
              setState(() {
                if (res >= 0.7) {
                  _resultText = "Compensa utilizar Gasolina!";
                } else {
                  _resultText = "Compensa utilizar Álcool!";
                }

                _busy = false;
                _completed = true;
              })
            });
  }

  reset() {
    setState(() {
      _color = Colors.deepPurple;
      alcController = MoneyMaskedTextController(
          leftSymbol: 'R\$ ', decimalSeparator: '.', thousandSeparator: ",");
      gasController = MoneyMaskedTextController(
          leftSymbol: 'R\$ ', decimalSeparator: '.', thousandSeparator: ",");
      _completed = false;
      _busy = false;
    });
  }
}
