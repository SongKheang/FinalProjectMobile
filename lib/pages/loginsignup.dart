import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const Login());

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const LoginSignup(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginSignup extends StatelessWidget {
  const LoginSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            indicatorColor: Colors.blue,
            tabs: <Widget>[
              Tab(
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              Tab(
                child: Text(
                  "Register",
                  style: TextStyle(color: Color.fromARGB(255, 156, 156, 157)),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Column(children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              Container(
                  padding: const EdgeInsets.only(right: 265.0, bottom: 5),
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
              const SizedBox(
                height: 30,
              ),
              Container(
                  padding: const EdgeInsets.only(right: 265.0, bottom: 5),
                  child: const Text(
                    "Password",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                width: 350,
                height: 50,
                child: TextField(
                  obscureText: true,
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
                    labelText: 'Password',
                    labelStyle: const TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
              Row(children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 23, top: 8),
                  child: const Text(
                    "Wrong Password",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 125, top: 8),
                  child: const Text(
                    "Forget password?",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ]),
              const SizedBox(height: 10),
              Container(
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: CupertinoButton(
                    child: const Text(
                      "Continue",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  )),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.grey, // Color of the divider
                      thickness: 1, // Thickness of the divider
                      endIndent: 10,
                      indent: 30, // Right padding of the divider
                    ),
                  ),
                  Text(
                    'Or',
                    style: TextStyle(color: Colors.grey), // Color of the text
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey, // Color of the divider
                      thickness: 1, // Thickness of the divider
                      indent: 10, // Left padding of the divider
                      endIndent: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  // color: Colors.black54,
                  border: Border.all(width: 1, color: Colors.black54),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                    child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Image.asset(
                          'assets/apple-fill.png',
                          width: 18,
                        ),
                      ),
                      Text("Login with Apple ID")
                    ],
                  ),
                )),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  // color: Colors.black54,
                  border: Border.all(width: 1, color: Colors.black54),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                    child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Image.asset(
                          'assets/pngwing 2.png',
                          width: 18,
                        ),
                      ),
                      Text("Login with Google")
                    ],
                  ),
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don't have an account?"),
                  Text(
                    " Sign up",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              )
            ]),
            //
            //

            //
            Column(children: <Widget>[
              const SizedBox(
                height: 15,
              ),
              Container(
                  padding: const EdgeInsets.only(right: 265.0, bottom: 5),
                  child: const Text(
                    "Your Name",
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
                    labelText: 'Name',
                    labelStyle: const TextStyle(color: Colors.black54),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                  padding: const EdgeInsets.only(right: 265.0, bottom: 5),
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
              const SizedBox(
                height: 15,
              ),
              Container(
                  padding: const EdgeInsets.only(right: 265.0, bottom: 5),
                  child: const Text(
                    "Password",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                width: 350,
                height: 50,
                child: TextField(
                  obscureText: true,
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
                    labelText: 'Password',
                    labelStyle: const TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
              Row(children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 23, top: 8),
                  child: const Text(
                    "Wrong Password",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 125, top: 8),
                  child: const Text(
                    "Forget password?",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ]),
              const SizedBox(height: 10),
              Container(
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: CupertinoButton(
                    child: const Text(
                      "Continue",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  )),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.grey, // Color of the divider
                      thickness: 1, // Thickness of the divider
                      endIndent: 10,
                      indent: 30, // Right padding of the divider
                    ),
                  ),
                  Text(
                    'Or',
                    style: TextStyle(color: Colors.grey), // Color of the text
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey, // Color of the divider
                      thickness: 1, // Thickness of the divider
                      indent: 10, // Left padding of the divider
                      endIndent: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  // color: Colors.black54,
                  border: Border.all(width: 1, color: Colors.black54),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                    child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Image.asset(
                          'assets/apple-fill.png',
                          width: 18,
                        ),
                      ),
                      Text("Login with Apple ID")
                    ],
                  ),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  // color: Colors.black54,
                  border: Border.all(width: 1, color: Colors.black54),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                    child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Image.asset(
                          'assets/pngwing 2.png',
                          width: 18,
                        ),
                      ),
                      Text("Login with Google")
                    ],
                  ),
                )),
              ),
              const SizedBox(
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("If you have an account?"),
                  Text(
                    " Login up",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              )
            ]),
          ],
        ),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
