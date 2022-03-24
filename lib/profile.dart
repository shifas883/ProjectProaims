import 'package:flutter/material.dart';
import 'createaccount.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    // TODO: implement initState
    getText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Container(
              height: 250,
              width: 411,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://us.123rf.com/450wm/luismolinero/luismolinero1909/luismolinero190917934/130592146-handsome-young-man-in-pink-shirt-over-isolated-blue-background-keeping-the-arms-crossed-in-frontal-p.jpg?ver=6"),
                      fit: BoxFit.fill)),
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
                    child: TextField(
                        controller: NameController,
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
                    child: TextField(
                        controller: EmailController,
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
                  child: TextField(
                    controller: PhoneController,
                    decoration: InputDecoration(hintText: "Phone"),
                  ),
                )
              ],
            )
          ]),
        ));
  }

  Future<void> getText() async {
    SharedPreferences Pref = await SharedPreferences.getInstance();
    NameController.text = await Pref.getString('text') ?? '';
    setState(() {});
  }
}
