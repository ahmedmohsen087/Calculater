import 'package:flutter/material.dart';

class CalculateBottm extends StatelessWidget {
  String text ;
  Function  onBtnClik ;
  CalculateBottm(this.text,this.onBtnClik);

  @override
  Widget build(BuildContext context) {
    return
      Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.purpleAccent,
              primary:Colors.black ,
            ),
              onPressed: (){
            onBtnClik(text);
          }, child: Text('$text',
          style: TextStyle(
            fontSize: 35,
          ),))
      )
    ;
  }
}
