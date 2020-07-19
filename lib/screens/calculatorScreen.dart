import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: BoxDecoration(),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcBtns('C',0xfff2e6d9),
              calcBtns('Del',0xfff2e6d9),
              calcBtns('%',0xfff2e6d9),
              calcBtns('+',0xfff2e6d9),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcBtns('7',0xffe0e0eb),
              calcBtns('8',0xffe0e0eb),
              calcBtns('9',0xffe0e0eb),
              calcBtns('x',0xfff2e6d9),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcBtns('4',0xffe0e0eb),
              calcBtns('5',0xffe0e0eb),
              calcBtns('6',0xffe0e0eb),
              calcBtns('+',0xfff2e6d9),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcBtns('1',0xffe0e0eb),
              calcBtns('2',0xffe0e0eb),
              calcBtns('3',0xffe0e0eb),
              calcBtns('-',0xfff2e6d9),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcBtnWide('0',0xffe0e0eb),
              calcBtns('.',0xffe0e0eb),
              calcBtns('=',0xffffce99),
            ],
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }

  Widget calcBtns(String value, int color){
    return Container(
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(10.0),
      ),
      width: MediaQuery.of(context).size.width/5,
      height: 50,
      child: Center(
        child: Text(
          value,
        ),
      ),
    );
  }

  Widget calcBtnWide(String value, int color){
    return Container(
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(10.0),
      ),
      width: 160.0,
      height: 50,
      child: Center(
        child: Text(
          value,
        ),
      ),
    );
  }

}
