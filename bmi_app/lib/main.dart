import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  var result = "";
  var bgColor = Colors.indigo.shade100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI'),
        ),
        body: Container(
          color: bgColor,
          child: Center(
            child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'BMI',
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
                  ),
                  TextField(
                    controller: wtController,
                    decoration: InputDecoration(
                        label: Text('Enter Your Weight (in Kgs)'),
                        prefixIcon: Icon(Icons.line_weight)),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 11),
                  TextField(
                    controller: ftController,
                    decoration: InputDecoration(
                      label: Text('Enter your Height (in feet)'),
                      prefixIcon: Icon(Icons.height),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  TextField(
                    controller: inController,
                    decoration: InputDecoration(
                      label: Text('Enter Your Height (in inch)'),
                      prefixIcon: Icon(Icons.height),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        var wt = wtController.text.toString();
                        var ft = ftController.text.toString();
                        var inch = inController.text.toString();

                        //check blank input

                        if (wt != "" && ft != "" && inch != "") {
                          //bmi calculation
                          // convert input into integer
                          var iWt = int.parse(wt);
                          var iFt = int.parse(ft);
                          var iInch = int.parse(inch);

                          // calculate all value into kg/m for SI unit of BMI
                          var tInch = (iFt * 12) + iInch;
                          var tCm = tInch * 2.54;
                          var tM = tCm / 100;

                          var bmi = iWt / (tM * tM);

                          //condition for changing color and msg for bmi value
                          var msg = '';
                          if (bmi > 25) {
                            msg = "You are Over Weight";
                            bgColor = Colors.orange.shade200;
                          } else if (bmi < 18) {
                            msg = "You are Under Weight";
                            bgColor = Colors.red.shade200;
                          } else {
                            msg = "You are Healthy";
                            bgColor = Colors.green.shade200;
                          }

                          setState(() {
                            result =
                                ' $msg \n Your BMI is : ${bmi.toStringAsFixed(2)}';
                          });
                        } else {
                          setState(() {
                            result = "Please Fill all required blanks!!";
                          });
                        }
                      },
                      child: Text('Calculate')),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    result,
                    style: TextStyle(fontSize: 28),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
