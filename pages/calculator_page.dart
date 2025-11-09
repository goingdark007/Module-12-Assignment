import 'package:flutter/material.dart';

import '../utilities/custom_button.dart';


class CalculatorApp extends StatefulWidget {

  final ThemeMode themeMode;
  final ValueChanged<ThemeMode> onThemeChanged;

  const CalculatorApp ({
    super.key,
    required this.themeMode,
    required this.onThemeChanged,
  });

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();

}

class _CalculatorAppState extends State<CalculatorApp> {

  String output = '0';
  String input = '0';
  String operator = ' ';
  double num1 = 0;
  double num2 = 0;
  double displayNum1 = 0;
  double displayNum2 = 0;

  void buttonPressed(String value) {

    setState(() {
      if (value == 'C') {
        output = '0';
        input = '';
        num1 = 0;
        num2 = 0;
        operator = ' ';
        displayNum1 = 0;
        displayNum2 = 0;

        return;

      } else if (value == '=') {
        num2 = double.parse(input);
        if (operator.isNotEmpty && input.isNotEmpty) {
          switch(operator) {
            case '+':
              output = (num1 + num2).toString();
            case '-':
              output = (num1 - num2).toString();
            case 'x':
              output = (num1 * num2).toString();
            case '/':
              output = num2 != 0 ?(num1 / num2).toString() : 'Error';
            case '%':
              output = (num1 * num2/100).toString();

          }

          input = output;

        }
      } else if (['+', '-', 'x', '/', '%'].contains(value)) {
        num1 = double.parse(input);
        operator = value;
        if (output != '0'){
          displayNum1 = double.parse(output);
          displayNum2 = 0;
          output = '0';
        }
        input = '';
        return;
      } else {
        if (input == '0'){
          input = value;
        } else {
          input += value;
          if (operator != ' '){
            displayNum1 = num1 == 0 ? double.parse(input) : num1;
            displayNum2 = double.parse(input);
          } else {
            displayNum1 = double.parse(input);
            displayNum2 = 0;
          }
        }

      }

    });

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        centerTitle: true,
        //backgroundColor: Colors.grey,
        leading: IconButton(
            onPressed: () {
              widget.onThemeChanged(widget.themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light);
            },
            icon: Icon( widget.themeMode == ThemeMode.light ? Icons.light_mode :
            Icons.dark_mode)),
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [

          Container(

            alignment: Alignment.bottomRight,

            height: 200,

            width: double.infinity,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('$displayNum1 $operator $displayNum2',
                  style: TextStyle(color: Theme.of(context).colorScheme.onSurface, fontSize: 36),
                ),
                SizedBox(height: 20),
                Text(output,
                  style: TextStyle(color: Theme.of(context).colorScheme.onSurface, fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),

          ),

          SizedBox(height: 15),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                buttonText: 'C',
                buttonColor: Colors.grey.shade800,
                onPressed: () => buttonPressed('C'),
              ),
              CustomButton(
                buttonText: '+/-',
                buttonColor:  Colors.grey.shade800,
                onPressed: () {},
              ),
              CustomButton(
                buttonText: '%',
                buttonColor:  Colors.grey.shade800,
                onPressed: () => buttonPressed('%'),
              ),
              CustomButton(
                buttonText: '/',
                buttonColor:  Colors.orange.shade800,
                onPressed: () => buttonPressed('/'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                buttonText: '7',
                buttonColor: Colors.grey.shade800,
                onPressed: () => buttonPressed('7'),
              ),
              CustomButton(
                buttonText: '8',
                buttonColor:  Colors.grey.shade800,
                onPressed: () => buttonPressed('8'),
              ),
              CustomButton(
                buttonText: '9',
                buttonColor:  Colors.grey.shade800,
                onPressed: () => buttonPressed('9'),
              ),
              CustomButton(
                buttonText: 'x',
                buttonColor:  Colors.orange.shade800,
                onPressed: () => buttonPressed('x'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                buttonText: '4',
                buttonColor: Colors.grey.shade800,
                onPressed: () => buttonPressed('4'),
              ),
              CustomButton(
                buttonText: '5',
                buttonColor:  Colors.grey.shade800,
                onPressed: () => buttonPressed('5'),
              ),
              CustomButton(
                buttonText: '6',
                buttonColor:  Colors.grey.shade800,
                onPressed: () => buttonPressed('6'),
              ),
              CustomButton(
                buttonText: '-',
                buttonColor:  Colors.orange.shade800,
                onPressed: () => buttonPressed('-'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(
                buttonText: '1',
                buttonColor: Colors.grey.shade800,
                onPressed: () => buttonPressed('1'),
              ),
              CustomButton(
                buttonText: '2',
                buttonColor:  Colors.grey.shade800,
                onPressed: () => buttonPressed('2'),
              ),
              CustomButton(
                buttonText: '3',
                buttonColor:  Colors.grey.shade800,
                onPressed: () => buttonPressed('3'),
              ),
              CustomButton(
                buttonText: '+',
                buttonColor:  Colors.orange.shade800,
                onPressed: () => buttonPressed('+'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 170,
                child: CustomButton(
                  buttonText: '0',
                  buttonColor: Colors.grey.shade800,
                  onPressed: () => buttonPressed('0'),
                ),
              ),
              CustomButton(
                buttonText: '.',
                buttonColor:  Colors.grey.shade800,
                onPressed: () => buttonPressed('.'),
              ),
              CustomButton(
                buttonText: '=',
                buttonColor:  Colors.orange.shade800,
                onPressed: () => buttonPressed('='),
              ),
            ],
          ),
          SizedBox(height: 5)

        ],

      ),
    );

  }

}