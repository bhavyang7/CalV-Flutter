import 'package:flutter/material.dart';
import 'dart:convert';

void main() => runApp(MaterialApp(
  home: Calculator(),
));

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String ans;
  String para;
  double x1;
  double x2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator',
        style: TextStyle(
          letterSpacing: 3,
        ),),
        backgroundColor: Colors.grey[800],
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          
          children: <Widget>[
            Container(
              color: Colors.grey[900],
              height: 180,
              width: 420,
              child: Center(
                child: Text('$ans',
                style:TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),),
              ),
            ),
            Container(
              color: Colors.grey[800],
              height: 420,
              width: 420,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(//Row1                      //row1start
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 100,
                        child: FlatButton(
                          onPressed: (){
                            setState(() {
                              ans="";
                            });
                          },
                          color: Colors.amber,
                          child: Center(
                            child: Text('C',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ) ,),
                          ),

                        ),
                      ),
                      Container(
                        height: 80,
                        width: 100,
                        child: FlatButton(
                          onPressed: (){
                            setState(() {
                              ans+=".";
                            });
                          },
                          color: Colors.amber,
                          child: Center(
                            child: Text('.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ) ,),
                          ),

                        ),
                      ),
                      Container(
                        height: 80,
                        width: 100,
                        child: FlatButton(
                          onPressed: (){
                            x1 = double.parse(ans);
                            para = '%';
                            setState(() {
                              ans+='%';
                            });

                          },
                          color: Colors.amber,
                          child: Center(
                            child: Text('%',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ) ,),
                          ),

                        ),
                      ),
                      Container(
                        height: 80,
                        width: 100,
                        child: FlatButton(
                          onPressed: (){
                            x1 = double.parse(ans);
                            para = '/';
                            setState(() {
                              ans+='/';
                            });
                          },
                          color: Colors.amber,
                          child: Center(
                            child: Text('/',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ) ,),
                          ),

                        ),
                      ),

                    ],
                  ),  //1                                //row1end
                  Row(//Row1                             //Row2 start
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 100,
                        child: FlatButton(
                          onPressed: (){
                            setState(() {
                              ans+='9';
                            });
                          },
                          color: Colors.grey[900],
                          child: Center(
                            child: Text('9',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,

                              ) ,),
                          ),

                        ),
                      ),
                      Container(
                        height: 80,
                        width: 100,
                        child: FlatButton(
                          onPressed: (){
                            setState(() {
                              ans+='8';
                            });
                          },
                          color: Colors.grey[900],
                          child: Center(
                            child: Text('8',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,

                              ) ,),
                          ),

                        ),
                      ),
                      Container(
                        height: 80,
                        width: 100,
                        child: FlatButton(
                          onPressed: (){
                            setState(() {
                              ans+='7';
                            });
                          },
                          color: Colors.grey[900],
                          child: Center(
                            child: Text('7',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,

                              ) ,),
                          ),

                        ),
                      ),
                      Container(
                        height: 80,
                        width: 100,
                        child: FlatButton(
                          onPressed: (){
                            x1 = double.parse(ans);
                            para = 'X';
                            setState(() {
                              ans+='X';
                            });
                          },
                          color: Colors.amber,
                          child: Center(
                            child: Text('X',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ) ,),
                          ),

                        ),
                      ),

                    ],
                  ),                                 //row2end
                  Row(                              //Row3 start
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 100,
                        child: FlatButton(
                          onPressed: (){
                            setState(() {
                              ans+='6';
                            });
                          },
                          color: Colors.grey[900],
                          child: Center(
                            child: Text('6',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,

                              ) ,),
                          ),

                        ),
                      ),
                      Container(
                        height: 80,
                        width: 100,
                        child: FlatButton(
                          onPressed: (){
                            setState(() {
                              ans+='5';
                            });
                          },
                          color: Colors.grey[900],
                          child: Center(
                            child: Text('5',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,

                              ) ,),
                          ),

                        ),
                      ),
                      Container(
                        height: 80,
                        width: 100,
                        child: FlatButton(
                          onPressed: (){
                            setState(() {
                              ans+='4';
                            });
                          },
                          color: Colors.grey[900],
                          child: Center(
                            child: Text('4',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,

                              ) ,),
                          ),

                        ),
                      ),
                      Container(
                        height: 80,
                        width: 100,
                        child: FlatButton(
                          onPressed: (){
                            x1 = double.parse(ans);
                            para = '-';
                            setState(() {
                              ans+='-';
                            });
                          },
                          color: Colors.amber,
                          child: Center(
                            child: Text('-',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ) ,),
                          ),

                        ),
                      ),

                    ],
                  ),                             //row3 end

                  Row(//Row1                             //Row4 start
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 100,
                        child: FlatButton(
                          onPressed: (){
                            setState(() {
                              ans+='1';
                            });
                          },
                          color: Colors.grey[900],
                          child: Center(
                            child: Text('1',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,

                              ) ,),
                          ),

                        ),
                      ),
                      Container(
                        height: 80,
                        width: 100,
                        child: FlatButton(
                          onPressed: (){
                            setState(() {
                              ans+='2';
                            });
                          },
                          color: Colors.grey[900],
                          child: Center(
                            child: Text('2',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,

                              ) ,),
                          ),

                        ),
                      ),
                      Container(
                        height: 80,
                        width: 100,
                        child: FlatButton(
                          onPressed: (){
                            setState(() {
                              ans+='3';
                            });
                          },
                          color: Colors.grey[900],
                          child: Center(
                            child: Text('3',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,

                              ) ,),
                          ),

                        ),
                      ),
                      Container(
                        height: 80,
                        width: 100,
                        child: FlatButton(
                          onPressed: (){
                            para = "+";
                            x1 = double.parse(ans);
                            setState(() {
                              ans+= '+';
                            });
                          },
                          color: Colors.amber,
                          child: Center(
                            child: Text('+',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ) ,),
                          ),

                        ),
                      ),

                    ],
                  ),                                   //row4ends

                  Row(//Row1                           //row4start
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 100,
                        child: FlatButton(
                          onPressed: (){},
                          color: Colors.amber,
                          child: Center(
                            child: Text('+/-',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ) ,),
                          ),

                        ),
                      ),
                      Container(
                        height: 80,
                        width: 100,
                        child: FlatButton(
                          onPressed: (){},
                          color: Colors.amber,
                          child: Center(
                            child: Text('0',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ) ,),
                          ),

                        ),
                      ),
                      Container(
                        height: 80,
                        width: 100,
                        child: FlatButton(
                          onPressed: (){},
                          color: Colors.amber,
                          child: Center(
                            child: Text('()',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ) ,),
                          ),

                        ),
                      ),
                      Container(
                        height: 80,
                        width: 100,
                        child: FlatButton(
                          onPressed: (){
                            x2 = double.parse(ans[ans.length - 1]);
                            double output;
                            if (para == '/'){
                              output = x1/x2;
                            }
                            else if (para=='X'){
                              output= x1*x2;
                            }
                            else if (para=='-'){
                              output= x1-x2;
                            }
                            else if (para=='+'){
                              output= x1+x2;
                            }
                            else if (para=='%'){
                              output= (x1/x2)*100;
                            }
                            setState(() {
                              ans = output.toString();
                            });
                          },
                          color: Colors.deepOrange,
                          child: Center(
                            child: Text('=',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ) ,),
                          ),

                        ),
                      ),

                    ],
                  ),


                ],
              ),

            )
          ],
        ),

      ),
    );
  }
}





