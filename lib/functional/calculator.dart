import 'package:flutter/foundation.dart';

class calculatorbrain with ChangeNotifier {
  String _output = "0";
  List<double> number = [];
  List<String> operator = [];

  String get output => _output;

  set output(String newOutput){
    if (newOutput == "AC"){
      _output = "0";
      number.clear();
      operator.clear();
    }
    else if (newOutput == "+" || 
        newOutput == "-" || 
        newOutput == "*" || 
        newOutput == "/" || 
        newOutput == "="){
      number.add(double.parse(_output));
      if (newOutput != "="){
        operator.add(newOutput);
        _output = "";
      }
      else {
        runCalculator();
        dynamic prettierNumber = number[0] == number[0].round() ? number[0].round() : number[0];
      }
    }
  }

}



