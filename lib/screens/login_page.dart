import 'package:flutter/material.dart';
import 'package:login_signup/themes/theme_helper.dart';
import 'package:login_signup/widgets/header_widget.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double _headerHeight = 250;
  Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerHeight,
              child: HeaderWidget(_headerHeight, true, Icons.login_rounded),
            ),
            SafeArea(
              child: Container(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                child: Column(
                  children: [
                    Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Sign in into your account.",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextField(
                            decoration: ThemeHelper().textInputDecoration(
                                'Username', 'Enter your username.'),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: ThemeHelper().textInputDecoration(
                              'Password',
                              'Enter your password.',
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
                            alignment: Alignment.topLeft,
                            child: Text('Forgot your password?'),
                          ),
                          Container(
                            decoration:
                            ThemeHelper().buttonBoxDecoration(context),
                            child: ElevatedButton(
                              style: ThemeHelper().buttonStyle(),
                              child: Padding(
                                padding:
                                EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
                                child: Text(
                                  'Sign In'.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                            child: Text('Don\'t have an account? Create one.'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 50.0,
                                width: 116.0,
                                child: SignInButton(
                                  Buttons.Google,
                                  text: "Google",
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(
                                width: 12.0,
                              ),
                              SizedBox(
                                height: 50.0,
                                width: 116.0,
                                child: SignInButton(
                                  Buttons.Facebook,
                                  text: "Facebook",
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
