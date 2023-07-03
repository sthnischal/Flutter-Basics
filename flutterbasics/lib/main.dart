import 'package:flutter/material.dart';
import 'package:flutterbasics/ui_helper/util.dart';
import 'package:intl/intl.dart';

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
    var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'Select Date',
                style: TextStyle(fontSize: 25),
              ),
              ElevatedButton(
                  onPressed: () async {
                    DateTime? datePicked = await showDatePicker(
                        context: context, // ? for if null value
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2023),
                        lastDate: DateTime(2025));

                    if (datePicked != null) {
                      print(
                          'Date Selected: ${datePicked.day}-${datePicked.month}-${datePicked.year}');
                    }
                  },
                  child: Text('Show')),
              ElevatedButton(
                  onPressed: () async {
                    TimeOfDay? pickedTime = await showTimePicker(
                        context: context, initialTime: TimeOfDay.now());
                    //initialEntryMode: TimePickerEntryMode.input);
                    //initialEntryMode: TimePickerEntryMode.dial); //it is bydefault date picker
                    if (pickedTime != null) {
                      print(
                          'Time Selected: ${pickedTime.hour}: ${pickedTime.minute}');
                    }
                  },
                  child: Text('Select Time'))
            ],
          ),
        ));
  }
}
