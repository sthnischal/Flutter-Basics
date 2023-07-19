import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var unameController = TextEditingController();

  var passController = TextEditingController();

  var output = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.account_circle,
              color: Colors.blue,
              size: 80,
            ),
            const SizedBox(
              height: 11,
            ),
            TextField(
              controller: unameController,
              decoration: InputDecoration(
                  label: const Text('Email'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11))),
            ),
            const SizedBox(
              height: 11,
            ),
            TextField(
              controller: passController,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                  label: const Text('Password'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11))),
            ),
            const SizedBox(
              height: 11,
            ),
            ElevatedButton(
              onPressed: () {
                var un = unameController.text.toString();
                var pa = passController.text.toString();

                if (un != '' && pa != '') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ));
                } else {
                  setState(() {});
                  output = 'Enter Email and Password';
                }
              },
              child: const Text('Login'),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              output,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      )),
    );
  }
}
