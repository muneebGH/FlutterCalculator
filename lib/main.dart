import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: " Muneebs first flutter app",
    theme: ThemeData.dark(),
    home: MyHome(),
  ));
}

class MyHome extends StatelessWidget {
  Widget build(BuildContext build) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Muneeb's Calculator ",
          style: TextStyle(color: Colors.white, fontFamily: "Roboto"),
        ),
        backgroundColor: Colors.black,
      ),
      body: CalcBody(),
    );
  }
}

class CalcBody extends StatefulWidget {
  CalcBodyState createState() => new CalcBodyState();
}

class CalcBodyState extends State<CalcBody> {
  double num1 = 0.0;
  double num2 = 0.0;
  double ans = 0.0;

  TextEditingController t1 = TextEditingController(text: "0");
  TextEditingController t2 = TextEditingController(text: "0");

  void add() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      ans = num1 + num2;
    });
  }

  void sub() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      ans = num1 - num2;
    });
  }

  void mul() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      ans = num1 * num2;
    });
  }

  void div() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      ans = num1 / num2;
    });
  }
   void clear()
  {
    setState(() {
      t1.text="";
      t2.text="";
      ans=0;
    });
  }

  Widget build(BuildContext build) {
    return Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 40.0),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  labelText: "Enter first number",
                  hintText: "e.g : 12345"),
              controller: t1,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  labelText: "Enter second number",
                  hintText: "e.g : 12345"),
              controller: t2,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                    child: ButtonTheme(
                  child: RaisedButton(
                    child: Text(
                      "+",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                    onPressed: add,
                  ),
                  minWidth: 120,
                  height: 50,
                )),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                ),
                Expanded(
                    child: ButtonTheme(
                  child: RaisedButton(
                    color: Colors.orangeAccent,
                    child: Text(

                      "-",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                    onPressed: sub,
                  ),
                  minWidth: 120,
                  height: 50,
                )),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                    child: ButtonTheme(
                  child: RaisedButton(
                    child: Text(
                      "*",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                    onPressed: mul,
                  ),

                  minWidth: 120,
                  height: 50,
                )),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                ),
                Expanded(
                    child: ButtonTheme(
                  child: RaisedButton(
                    child: Text(
                      "/",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                    onPressed: div,
                  ),
                  minWidth: 120,
                  height: 50,
                )),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top:20.0),
            ),
            ButtonTheme(
              child: RaisedButton(
                color: Colors.red,
                child: Text(
                  "Clear",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
                onPressed: clear,
              ),
              minWidth: 120,
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                helperText: "Ans",
                labelText: "Ans : $ans",
              ),
              enabled: false,
            ),
          ],
        ));
  }
}
