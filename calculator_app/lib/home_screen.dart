import 'package:calculator_app/components.dart';
import 'package:calculator_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:math_expressions/math_expressions.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
     // backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(userInput.toString(),style: TextStyle(fontSize: 30, color: Colors.white),),
                    SizedBox(height: 30,),
                    Text(answer.toString(),style: TextStyle(fontSize: 30, color: Colors.white),),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(title: 'AC',onpress: (){
                          userInput = '';
                          answer = '';
                          setState(() {

                          });
                        },),

                        MyButton(title: '+/-',onpress: (){
                          userInput += '+/-';
                          setState(() {

                          });
                        },),
                        MyButton(title: '%',onpress: (){
                          userInput += '%';
                          setState(() {

                          });
                        },),
                        MyButton(title: '/',color: Color(0xffffa00a),onpress: (){
                          userInput += '/';
                          setState(() {

                          });
                        },),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '7',onpress: (){
                          userInput += '7';
                          setState(() {

                          });
                        },),

                        MyButton(title: '8',onpress: (){
                          userInput += '8';
                          setState(() {

                          });
                        },),
                        MyButton(title: '0',onpress: (){
                          userInput += '0';
                          setState(() {

                          });
                        },),
                        MyButton(title: 'X',color: Color(0xffffa00a),onpress: (){
                          userInput += 'X';
                          setState(() {

                          });
                        },),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '4',onpress: (){
                          userInput += '4';
                          setState(() {

                          });
                        },),

                        MyButton(title: '5',onpress: (){
                          userInput += '5';
                          setState(() {

                          });
                        },),
                        MyButton(title: '6',onpress: (){
                          userInput += '6';
                          setState(() {

                          });
                        },),
                        MyButton(title: '-',color: Color(0xffffa00a),onpress: (){
                          userInput += '-';
                          setState(() {

                          });
                        },),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '1',onpress: (){
                          userInput += '1';
                          setState(() {

                          });
                        },),

                        MyButton(title: '2',onpress: (){
                          userInput += '2';
                          setState(() {

                          });
                        },),
                        MyButton(title: '3',onpress: (){ userInput += '3';
                        setState(() {

                        });},),
                        MyButton(title: '+',color: Color(0xffffa00a),onpress: (){
                          userInput += '+';
                          setState(() {

                          });
                        },),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(title: '0',onpress: (){
                          userInput += '0';
                          setState(() {

                          });
                        },),

                        MyButton(title: '.',onpress: (){
                          userInput += '.';
                          setState(() {

                          });
                        },),
                        MyButton(title: 'DEL',onpress: (){
                     userInput = userInput.substring(0 , userInput.length-1);
                      setState(() {

                      });
                        },),
                        MyButton(title: '=',color: Color(0xffffa00a),onpress: (){
                          equalPress();
                          setState(() {
                            
                          });
                        },),
                      ],
                    ),
                  ],
                ),
              ),






            ],
          ),
        ),
      ),
    );
  }
  void equalPress() {
    String finalUserInput = userInput.replaceAll('X', '*');
Parser p = Parser();
Expression expression = p.parse(finalUserInput);
ContextModel contextModel = ContextModel();

double eval = expression.evaluate(EvaluationType.REAL,contextModel);
answer = eval.toString();
  }
}
