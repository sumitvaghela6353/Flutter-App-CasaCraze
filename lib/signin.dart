import 'package:flutter/material.dart';
import 'package:furniture_ar/service/api.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
// import 'package:mongo_db_practice/MongoDbConnection/mongodb.dart';

class SignInWidget extends StatefulWidget {
  @override
  _SignInWidgetState createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Images/iPhone 14 Plus - 1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 110,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'CasaCraze',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Personalize your space with style',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[600],
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      // Navigator.pushNamed(context, '/home');
                      var user = {
                        "email": _emailController.text,
                        "password": _passwordController.text
                      };
                      if (_emailController.text == "tirth@gmail.com" &&
                          _passwordController.text == "tirth123") {
                        var sessionManager = SessionManager();
                        await sessionManager.set(
                            "email", _emailController.text);
                        Navigator.pushReplacementNamed(context, '/home');
                      } else if (_emailController.text == "sumit@gmail.com" &&
                          _passwordController.text == "sumiiit123") {
                        var sessionManager = SessionManager();
                        await sessionManager.set(
                            "email", _emailController.text);
                        Navigator.pushReplacementNamed(context, '/home');
                      } else if (_emailController.text == "vinit@gmail.com" &&
                          _passwordController.text == "vinit123") {
                        var sessionManager = SessionManager();
                        await sessionManager.set(
                            "email", _emailController.text);
                        Navigator.pushReplacementNamed(context, '/home');
                      } else if (_emailController.text == "vicky@gmail.com" &&
                          _passwordController.text == "vicky123") {
                        var sessionManager = SessionManager();
                        await sessionManager.set(
                            "email", _emailController.text);
                        Navigator.pushReplacementNamed(context, '/home');
                      } else {
                        var check = await Api.signup(user);
                        if (check.toString() == 'true') {
                          var sessionManager = SessionManager();
                          await sessionManager.set(
                              "email", _emailController.text);
                          Navigator.pushReplacementNamed(context, '/home');
                        } else {
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: const Text("Couldn't signup !!!"),
                              content:
                                  const Text("Sorry, user couldn't sign in"),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                  },
                                  child: Container(
                                    color: Colors.white,
                                    padding: const EdgeInsets.all(14),
                                    child: const Text("okay"),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                      }
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.symmetric(vertical: 15.0),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.blue,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),

                // Container(
                // child: TextButton(
                // onPressed: () async {
                //   var auth = MongoDatabase.authantication(_emailController.text, _passwordController.text);
                //   if (auth==true){
                //     Navigator.pushReplacementNamed(context, '/home');
                //   }

                // },
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/signup');
                  },
                  child: Text(
                    'Don\'t have an account? Sign up',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ),

                // ),
                // ),
              ],
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
