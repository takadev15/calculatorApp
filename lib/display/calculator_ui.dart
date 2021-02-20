import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapp/functional/calculator.dart';

class calculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState(); 
}

class _CalculatorPageState extends State<CalculatorPage> {
  void _showDialog(){
    showDialog(
        context: context,
        builder: (_) => CupertinoAlertDialog(
            title: Text(
                "Can't enter more then 7 digit.",
                style: kAlertText,
                ),
        )
    )
  }
}
