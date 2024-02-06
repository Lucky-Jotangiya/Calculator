

import 'package:flutter/material.dart';

void main()
{
  runApp(const MaterialApp(
    home: Calculator(),
  ));
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  String output = "";
  double num1 =0;
  double num2 =0;
  int cnt=0;

  getValue(String text){
    setState(() {
      output = output+ text;
    });

  }

  operator(String op){

    setState(() {
      double temp=0;
      temp=num1;
      num1 = double.parse(output);

      if(cnt==1){
        num1 = num1+temp;
      }

      output = "";

      if(op=="+"){
        cnt=1;
      }
      else if(op=="-"){
        cnt=2;
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Calculator"),
      ),

      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(output,
                    style: const TextStyle(
                        fontSize: 48,color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ),

          // buttons

          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(22),
                    ),

                    onPressed: (){
                      getValue("AC");
                      output = "";
                      num1=0;
                      num2=0;
                    },
                    child: const Text("AC",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(22),
                    ),

                    onPressed: (){
                      // getValue("B");
                      setState(() {
                        output = output.substring(0,output.length-1);
                      });


                    },
                    child: const Text("B",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(22),
                    ),

                    onPressed: (){
                      operator("%");
                    },
                    child: const Text("%",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(22),
                    ),

                    onPressed: (){
                      operator("/");
                    },
                    child: const Text("/",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),

            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(22),
                    ),

                    onPressed: (){
                      getValue("7");
                    },
                    child: const Text("7",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(22),
                    ),

                    onPressed: (){
                      getValue("8");
                    },
                    child: const Text("8",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(22),
                    ),

                    onPressed: (){
                      getValue("9");
                    },
                    child: const Text("9",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(22),
                    ),

                    onPressed: (){
                      operator("x");
                    },
                    child: const Text("x",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),

            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(22),
                    ),

                    onPressed: (){
                      getValue("4");
                    },
                    child: const Text("4",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(22),
                    ),

                    onPressed: (){
                      getValue("5");
                    },
                    child: const Text("5",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(22),
                    ),

                    onPressed: (){
                      getValue("6");
                    },
                    child: const Text("6",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(22),
                    ),

                    onPressed: (){
                      operator("-");
                    },
                    child: const Text("-",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),

            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(22),
                    ),

                    onPressed: (){
                      getValue("1");
                    },
                    child: const Text("1",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(22),
                    ),

                    onPressed: (){
                      getValue("2");
                    },
                    child: const Text("2",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(22),
                    ),

                    onPressed: (){
                      getValue("3");
                    },
                    child: const Text("3",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(22),
                    ),

                    onPressed: (){
                      operator("+");
                    },
                    child: const Text("+",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),

            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(22),
                    ),

                    onPressed: (){
                      getValue("0");
                    },
                    child: const Text("0",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(22),
                    ),

                    onPressed: (){
                      getValue(".");
                    },
                    child: const Text(".",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(22),
                    ),

                    onPressed: (){
                      setState(() {
                        num2 = double.parse(output);
                        output = "";
                        if(cnt==1){
                          output =(num1 + num2).toString();
                        }
                        else if(cnt==2){
                          output = (num1 - num2).toString();
                        }
                      });
                    },
                    child: const Text("=",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
