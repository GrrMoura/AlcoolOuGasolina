import 'package:flutter/material.dart';

class LoadingBnt extends StatelessWidget {
  var label = "";
  var busy = false;
  var invert = false;
  VoidCallback func;

  LoadingBnt(this.label, this.busy, this.invert, this.func, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: const CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            margin: const EdgeInsets.all(30),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                color: invert
                    ? Theme.of(context).primaryColor
                    : Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(60)),
            child: TextButton(
                onPressed: func,
                child: Text(
                  label,
                  style: TextStyle(
                      color: invert
                          ? Colors.white
                          : Theme.of(context).primaryColor,
                      fontSize: 25,
                      fontFamily: "Big Shoulders Display"),
                )),
          );
  }
}
