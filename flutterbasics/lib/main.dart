import 'package:flutter/material.dart';
import 'package:flutterbasics/ui_helper/util.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FlutterApp",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Center(
            child: Container(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      keyboardType: TextInputType.phone,
                      //enabled: false,
                      controller: emailText,
                      decoration: InputDecoration(
                          hintText: 'Enter Email Here',
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                color: Colors.deepOrange,
                                width: 2,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Colors.blueAccent, width: 2)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide:
                                  BorderSide(color: Colors.black12, width: 2)),
                          //suffixText: "Username Exist",
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.orange,
                            ),
                            onPressed: () {},
                            // border: OutlineInputBorder(
                            //     borderRadius: BorderRadius.circular(11),
                            //     borderSide:
                            //         BorderSide(color: Colors.deepOrange))
                          ),
                          prefixIcon: Icon(
                            //Icons.email,
                            Icons.phone,
                            color: Colors.orange,
                          )),
                    ),
                    Container(height: 11),
                    TextField(
                      controller: passText,
                      obscureText: true, //hidden text
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                          hintText: 'Enter Password Here',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide:
                                  BorderSide(color: Colors.deepOrange))),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          String uEmail = emailText.text.toString();
                          String uPass = passText.text;

                          print('Email : $uEmail, Pass: $uPass');
                        },
                        child: Text('Login'))
                  ],
                ))));
  }
}
