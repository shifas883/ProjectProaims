import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proaims/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}
var NameController=TextEditingController();
var EmailController=TextEditingController();
var PhoneController=TextEditingController();

var ListPerson=[];


class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 200,
              width: 411,
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 60, 50),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Create An Account",
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all()),
                    child: TextField(controller: NameController,
                        decoration: InputDecoration(hintText: "Name"))),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all()),
                    child: TextField(controller: EmailController,
                        decoration: InputDecoration(hintText: "Email"))),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all()),
                    child: TextField(controller: PhoneController,
                      decoration: InputDecoration(hintText: "Phone"),
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    )),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: Text("SignIn"),
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
  Future<void>Savetext()async{
    ListPerson.insert(0, NameController.text);
    SharedPreferences Pref =await SharedPreferences.getInstance();
    final text = await Pref.setString('text',NameController.text);
    setState(() {

    });
  }


}
