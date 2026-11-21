import 'package:flutter/material.dart';
import 'package:flutter_application_1grocery_eraa/custom_widgets/sign_log_custom.dart';
import 'package:flutter_application_1grocery_eraa/screens/home_screen.dart';
import 'package:flutter_application_1grocery_eraa/screens/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(height: 40),
              Center(
                child: Image.asset(
                  "assets/carrot.png",
                  width: 37.720611572265625,
                  height: 42.967018127441406,
                  color: Color(0XFFF3603F),
                ),
              ),
              SizedBox(height: 60),
              Align(
                alignment: Alignment.bottomLeft,

                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Align(
                alignment: Alignment.bottomLeft,

                child: Text(
                  "enter your email and password",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
              SizedBox(height: 40),
              CustomTextField(
                label: "Email",
                hintText: "mariam.magdy@gmail.com",
                controller: emailController,
                typeIcon: Icon(Icons.email_outlined),
                obscureText: false,
              ),
              CustomTextField(
                label: "password",
                hintText: ".......",
                controller: passwordController,
                typeIcon: Icon(Icons.remove_red_eye_outlined),
                obscureText: true,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
              ),
              SizedBox(height: 20),
              CustomButton(
                text: "login",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an account?"),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Text(
                      "sign up",
                      style: TextStyle(
                        color: Color(0xFF53B175),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
