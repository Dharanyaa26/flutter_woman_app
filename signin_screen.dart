import 'package:flutter/material.dart';
import 'package:woman_app/reusable_widgets/reusable_widget.dart';
import 'package:woman_app/screens/signup_screen.dart';
import 'package:woman_app/utils/color_utils.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
          hexStringToColor("1E90FF"),
          hexStringToColor("32CD32"),
          hexStringToColor("FF8C00")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.2, 20, 0),
          child: Column(
            children: <Widget>[
              logoWidget("assets/images/logo1.png"),
              SizedBox(
                height: 30,
              ),
              reusableTextField("Enter username", Icons.person_outline, false, _emailTextController),
              SizedBox(
                height: 30,
              ),
              reusableTextField("Enter password", Icons.lock_outline, true, _passwordTextController),
              SizedBox(
                height: 30,
              ),
              signInSignUpButton(context, true, () {}),
              signUpOption()
            ],
          ),
        ),
      ),
      ),
    );
  }

  Row signUpOption(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account ?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context, 
              MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}