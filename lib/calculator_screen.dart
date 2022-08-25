import 'package:calcultor/calculate_buttom.dart';
import 'package:flutter/material.dart';

class CalaulatorScreen extends StatefulWidget {
  static const String routName = 'Calculator';

  @override
  State<CalaulatorScreen> createState() => _CalaulatorScreenState();
}

class _CalaulatorScreenState extends State<CalaulatorScreen> {
  String resault = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
      title: Center(
        child: Text('Calaulator',style: TextStyle(
          fontSize: 30
        ),
     ),
      ),
    ),
      body: Column(
        children: [
          Expanded(
            child: Text('$number $opertor $resault',style: TextStyle(
              fontSize: 30
            ))
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculateBottm('7',onDiditClik),
                CalculateBottm('8',onDiditClik),
                CalculateBottm('9',onDiditClik),
                CalculateBottm('/',onOpertorClik),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculateBottm('4',onDiditClik),
                CalculateBottm('5',onDiditClik),
                CalculateBottm('6',onDiditClik),
                CalculateBottm('*',onOpertorClik),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculateBottm('1',onDiditClik),
                CalculateBottm('2',onDiditClik),
                CalculateBottm('3',onDiditClik),
                CalculateBottm('+',onOpertorClik),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculateBottm('C',clear),
                CalculateBottm('0',onDiditClik),
                CalculateBottm('=',onEqulClik),
                CalculateBottm('-',onOpertorClik),
              ],
            ),
          ),

        ],
      ),

    );
  }
  String number = '';
  String opertor = '';
  void clear (String clear){
    number= '';
    opertor = '';
    resault ='' ;
    setState(() {

    });

  }
  void onOpertorClik(String op){
    if(number.isEmpty){
      number=resault;
    }else{
      number=calculate(number, opertor, resault);
    }
    opertor= op;
    resault ='';
    setState(() {});


  }
  void onEqulClik (String _){
    String res = calculate(number, opertor, resault);
    resault = res;
     number = '';
     opertor = '';
    setState(() {});
  }
  String calculate ( String n1, String op , String n2){
    double num1 = double.parse(n1);
    double num2 = double.parse(n2);
    double result = 0 ;
    if(op=='+'){
      result = num1+num2;
    }else if (op=='-'){
      result = num1-num2;
    }else if (op=='/'){
      result = num1/num2;
    }else if (op=='*'){
      result = num1*num2;
    }
return result.toString();

  }

  void onDiditClik(String btnText){
    resault+=btnText;
    setState(() {});

  }
}
