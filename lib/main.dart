import 'package:flutter/material.dart';
import 'package:login_page/welcome.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Page",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email)),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "password",
                    prefixIcon: Icon(Icons.key)),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome(),));
              },
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                shape: StadiumBorder(),
                shadowColor: Colors.lightBlueAccent,
                minimumSize: Size(40, 40),
              ),
            ),
            Row(
              children: <Widget>[
                TextButton(onPressed: () {}, child: Text("reset passsword"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
