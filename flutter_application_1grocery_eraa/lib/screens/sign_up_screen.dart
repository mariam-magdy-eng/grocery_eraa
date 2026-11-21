import 'package:flutter/material.dart';
import 'package:flutter_application_1grocery_eraa/custom_widgets/sign_log_custom.dart';
import 'package:flutter_application_1grocery_eraa/screens/home_screen.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Center(
                child: Image.asset(
                  "assets/carrot.png",
                  width: 37.720611572265625,
                  height: 42.967018127441406,

                  color: Color(0XFFF3603F),

                  errorBuilder: (context, error, stackTrace) =>
                      const SizedBox.shrink(),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Enter your credentials to continue",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(height: 40),

              CustomTextField(
                label: "Username",
                hintText: "mariam magdy said",
                controller: usernameController,
                typeIcon: const Icon(Icons.person_outline),
                obscureText: false,
              ),

              CustomTextField(
                label: "Email",
                hintText: "mariam.magdy@gmail.com",
                controller: emailController,
                typeIcon: const Icon(Icons.email_outlined),
                obscureText: false,
              ),

              CustomTextField(
                label: "Password",
                hintText: "••••••••",
                controller: passwordController,
                typeIcon: const Icon(Icons.remove_red_eye_outlined),
                obscureText: true,
              ),

              const SizedBox(height: 10),

              Wrap(
                children: [
                  const Text(
                    "By continuing you agree to our ",
                    style: TextStyle(color: Colors.black45, fontSize: 12),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Terms of Service and Privacy Policy",
                      style: TextStyle(
                        color: Color(0xFF53B175),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              CustomButton(
                text: "Sign Up",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account? "),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Login",
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
