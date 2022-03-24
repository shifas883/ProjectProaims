import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proaims/otppage.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 250,
                  width: 410,
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 50, 60, 50),
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Text("Phone Number"),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all()),
                    child: TextField(
                      decoration: InputDecoration(hintText: "Phone Number"),
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OtpPage()));
              },
              child: Icon(Icons.arrow_forward),
              backgroundColor: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
