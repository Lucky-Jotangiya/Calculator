import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String output = '';
  double num1 = 0.0;
  double num2 = 0.0;
  int cnt = 0;

  Widget buildButton(String text,Color bgColor,Color textColor){
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Card(
          color: bgColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: InkWell(
            onTap: () {
              onPressed(text);
            },
            child: Container(
              height: 60,
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(color: bgColor,borderRadius: BorderRadius.circular(5)),
              child: Center(child: Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: textColor),),),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10,top: 150),
                    child: Text(output,style: TextStyle(color: Colors.white,fontSize: 45),),
                  )),
            ),
          ),

          Row(
            children: [
              buildButton('AC',Colors.deepOrange,Colors.white),
              buildButton('B',Colors.deepOrange,Colors.white),
              buildButton('%',Colors.grey.shade700,Colors.lime),
              buildButton('/',Colors.grey.shade700,Colors.lime),
            ],
          ),
          Row(
            children: [
              buildButton('1',Colors.grey.shade800,Colors.white),
              buildButton('2',Colors.grey.shade800,Colors.white),
              buildButton('3',Colors.grey.shade800,Colors.white),
              buildButton('-',Colors.grey.shade700,Colors.lime),
            ],
          ),
          Row(
            children: [
              buildButton('4',Colors.grey.shade800,Colors.white),
              buildButton('5',Colors.grey.shade800,Colors.white),
              buildButton('6',Colors.grey.shade800,Colors.white),
              buildButton('*',Colors.grey.shade700,Colors.lime),
            ],
          ),
          Row(
            children: [
              buildButton('7',Colors.grey.shade800,Colors.white),
              buildButton('8',Colors.grey.shade800,Colors.white),
              buildButton('9',Colors.grey.shade800,Colors.white),
              buildButton('+',Colors.grey.shade700,Colors.lime),
            ],
          ),
          Row(
            children: [
              buildButton('0',Colors.grey.shade800,Colors.white),
              buildButton('.',Colors.grey.shade800,Colors.white),
              buildButton('=',Colors.deepOrange,Colors.white),
            ],
          ),

        ],
      ),
    );
  }

  void onPressed(String text) {

      if(text == 'AC'){
        setState(() {
          num1=0;
          num2=0;
          cnt=0;
          output = '';
        });
      }
      else if(text == 'B'){
        setState(() {
          if(output != ''){
            output = output.substring(0,output.length-1);
          }
        });
      }
      else if(text == '+'){
        setState(() {
          double temp = 0;
          temp = num1;
          num1 = double.parse(output);
          if(cnt==1){
            num1 = num1 + temp;
          }
          output = '';
          cnt=1;
        });
      }
      else if(text == '-'){
        setState(() {
          double temp = 0;
          temp = num1;
          num1 = double.parse(output);
          if(cnt==2){
            num1 = temp - num1;
          }
          output = '';
          cnt=2;
        });
      }
      else if(text == '*'){
        setState(() {
          double temp = 0;
          temp = num1;
          num1 = double.parse(output);
          if(cnt==3){
            num1 = temp * num1;
          }
          output = '';
          cnt=3;
        });
      }
      else if(text == '%'){
        setState(() {
          double temp = 0;
          temp = num1;
          num1 = double.parse(output);
          if(cnt==4){
            num1 = temp % num1;
          }
          output = '';
          cnt=4;
        });
      }
      else if(text == '/'){
        setState(() {
          double temp = 0;
          temp = num1;
          num1 = double.parse(output);
          if(cnt==5){
            num1 = temp / num1;
          }
          output = '';
          cnt=5;
        });
      }
      else if(text == '='){
        setState(() {
          if(output == ''){
            num2 = num1;
          }
          else{
            num2 = double.parse(output);
          }
          if(cnt == 1){
            output = (num1 + num2).toString();
          }
          else if(cnt == 2){
            output = (num1 - num2).toString();
          }
          else if(cnt == 3){
            output = (num1 * num2).toString();
          }
          else if(cnt == 4){
            output = (num1 % num2).toString();
          }
          else if(cnt == 5){
            if(num2 == 0){
              output = "Can't Divide by 0";
            }
            else{
              output = (num1 / num2).toString();
            }
          }
        });
      }
      else if(text == '.'){
        if(output.contains('.')){
          print('already ccc');
        }
        else{
          setState(() {
            output = '$output.';
          });
        }
      }
      else{
        setState(() {
          output = output + text;
        });
      }
  }
}
