import 'package:flutter/material.dart';

class CalculatorProvider extends ChangeNotifier {
  List<String> listNumbers = [];
  List<String> listNumbers2 = [];

  double firstNumber = 0;
  double secondNumber = 0;
  double equal = 0;
  String operation = '';

  void addList(String number) {
    if (operation == '') {
      listNumbers.add(number);
    } else {
      listNumbers2.add(number);
    }
    notifyListeners();
  }

  void operationFunction(String operation) {
    if (listNumbers.isNotEmpty) {
      this.operation = operation;
      firstNumber = double.parse(listNumbers.join());
      notifyListeners();
    }
  }

  void equalFunction() {
    if (listNumbers2.isEmpty) {
      equal = double.parse(listNumbers.join());
    } else {
      secondNumber = double.parse(listNumbers2.join());
      if (operation == '÷') {
        equal = (firstNumber / secondNumber);
      } else if (operation == '×') {
        equal = (firstNumber * secondNumber);
      } else if (operation == '-') {
        equal = (firstNumber - secondNumber);
      } else if (operation == '+') {
        equal = (firstNumber + secondNumber);
      }
    }
    notifyListeners();
  }

  void dotFunction() {
    if (operation == '' && listNumbers.contains('.')) {
      return;
    } else if (operation == '') {
      listNumbers.add('.');
    } else if (operation != '' && listNumbers2.contains('.')) {
      return;
    } else {
      listNumbers2.add('.');
    }
    notifyListeners();
  }

  void backSpace() {
    if (listNumbers2.isNotEmpty) {
      listNumbers2.removeLast();
    } else if (operation != '') {
      operation = '';
    } else {
      listNumbers.removeLast();
    }
    notifyListeners();
  }

  void clearFunction() {
    listNumbers.clear();
    listNumbers2.clear();
    equal = 0;
    operation = '';
    notifyListeners();
  }
}
