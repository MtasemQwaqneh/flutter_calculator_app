import 'package:calculator/controllaer/calculator_provider.dart';
import 'package:calculator/core/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var x = context.watch<CalculatorProvider>();

    return Scaffold(
      backgroundColor: Color(0xff0d182a),
      appBar: AppBar(
        backgroundColor: Color(0xff0d182a),
        leading: Icon(Icons.calculate_outlined, color: Colors.white),
        title: Text('Calculator', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(15),
        child: Column(
          spacing: 15,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff303e58),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: .center,
                  crossAxisAlignment: .end,
                  children: [
                    Row(
                      mainAxisAlignment: .end,
                      children: [
                        Card(
                          borderOnForeground: false,
                          color: Color(0xff303e58),
                          child: Text(
                            '${x.listNumbers.join()} ',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        Text(
                          '${x.operation} ',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Card(
                          borderOnForeground: true,
                          color: Color(0xff303e58),
                          child: Text(
                            '${x.listNumbers2.join()} ',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    x.operation == '÷' && x.equal == double.infinity
                        ? Text(
                            'Erorr',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.red[300],
                              fontWeight: .bold,
                            ),
                          )
                        : Text(
                            '${x.equal}',
                            style: TextStyle(
                              fontSize: 38,
                              color: Colors.white,
                              fontWeight: .bold,
                            ),
                          ),
                  ],
                ),
              ),
            ),
            Row(
              spacing: 15,
              children: [
                aadButton(
                  () {
                    context.read<CalculatorProvider>().clearFunction();
                  },
                  Color(0xff2d3b55),
                  'C',
                ),
                Expanded(
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(15),
                    ),
                    onPressed: () {
                      context.read<CalculatorProvider>().backSpace();
                    },
                    color: Color(0xff2d3b55),
                    height: 75,

                    child: Icon(Icons.backspace_outlined, color: Colors.white),
                  ),
                ),
                aadButton(
                  () {
                    context.read<CalculatorProvider>().operationFunction('÷');
                  },
                  Color(0xfffa961a),
                  '÷',
                ),
              ],
            ),
            Row(
              spacing: 15,
              children: [
                aadButton(
                  () {
                    context.read<CalculatorProvider>().addList('1');
                  },
                  Color(0xff2d3b55),
                  '1',
                ),
                aadButton(
                  () {
                    context.read<CalculatorProvider>().addList('2');
                  },
                  Color(0xff2d3b55),
                  '2',
                ),
                aadButton(
                  () {
                    context.read<CalculatorProvider>().addList('3');
                  },
                  Color(0xff2d3b55),
                  '3',
                ),
                aadButton(
                  () {
                    context.read<CalculatorProvider>().operationFunction('×');
                  },
                  Color(0xfffa961a),
                  '×',
                ),
              ],
            ),
            Row(
              spacing: 15,
              children: [
                aadButton(
                  () {
                    context.read<CalculatorProvider>().addList('4');
                  },
                  Color(0xff2d3b55),
                  '4',
                ),
                aadButton(
                  () {
                    context.read<CalculatorProvider>().addList('5');
                  },
                  Color(0xff2d3b55),
                  '5',
                ),
                aadButton(
                  () {
                    context.read<CalculatorProvider>().addList('6');
                  },
                  Color(0xff2d3b55),
                  '6',
                ),
                aadButton(
                  () {
                    context.read<CalculatorProvider>().operationFunction('-');
                  },
                  Color(0xfffa961a),
                  '-',
                ),
              ],
            ),
            Row(
              spacing: 15,
              children: [
                aadButton(
                  () {
                    context.read<CalculatorProvider>().addList('7');
                  },
                  Color(0xff2d3b55),
                  '7',
                ),
                aadButton(
                  () {
                    context.read<CalculatorProvider>().addList('8');
                  },
                  Color(0xff2d3b55),
                  '8',
                ),
                aadButton(
                  () {
                    context.read<CalculatorProvider>().addList('9');
                  },
                  Color(0xff2d3b55),
                  '9',
                ),
                aadButton(
                  () {
                    context.read<CalculatorProvider>().operationFunction('+');
                  },
                  Color(0xfffa961a),
                  '+',
                ),
              ],
            ),
            Row(
              spacing: 15,
              children: [
                Expanded(
                  flex: 2,
                  child: aadButton(
                    () {
                      context.read<CalculatorProvider>().addList('0');
                    },
                    Color(0xff2d3b55),
                    '0',
                  ),
                ),
                aadButton(
                  () {
                    context.read<CalculatorProvider>().dotFunction();
                  },
                  Color(0xff2d3b55),
                  '.',
                ),
                aadButton(
                  () {
                    context.read<CalculatorProvider>().equalFunction();
                  },
                  Color(0xfff03bb894),
                  '=',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
