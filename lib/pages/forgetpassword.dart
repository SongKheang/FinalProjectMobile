import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const forgetpass());
}

class forgetpass extends StatelessWidget {
  const forgetpass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ForgetPass(),
    );
  }
}

class ForgetPass extends StatefulWidget {
  const ForgetPass({
    super.key,
  });
  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Container(
          padding: EdgeInsets.only(top: 5),
          child: Image.asset('assets/backarrow.png'),
        )),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  "Forget Password",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Text(
                  "Please enter your email to reset the password",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              Container(
                  padding:
                      const EdgeInsets.only(right: 265.0, top: 10, bottom: 10),
                  child: const Text(
                    "Your Email",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                width: 350,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: 'Email',
                    labelStyle: const TextStyle(color: Colors.black54),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: CupertinoButton(
                    child: const Text(
                      "Reset Pass",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  )),
            ],
          ),
        ));
  }
}
