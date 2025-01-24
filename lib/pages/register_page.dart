import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quickbite/components/my_button.dart';
import 'package:quickbite/components/my_textfield.dart';
import 'package:quickbite/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  void Register() async {
    final authService = AuthService();
    if (passwordController.text == confirmPasswordController.text) {
      try {
        await authService.signUpWithEmailPassword(
          emailController.text,
          passwordController.text,
        );
        showDialog(
          context: context,
          builder: (context) => const AlertDialog(
            title: Text("Account created successfully!"),
          ),
        );
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Error"),
            content: Text(e.toString()),
          ),
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Password doesn't match!"),
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
            'https://lottie.host/9f5a6501-8c74-48ab-8f74-485a34d626d2/fH3uoIu0R3.json',
            height: 300,
            width: 300,
            repeat: true,
          ),
          const SizedBox(height: 25),
          Text(
            "Let's create an account for you.",
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          const SizedBox(height: 25),
          MyTextField(
            controller: emailController,
            hintText: "Email",
            obscureText: false,
          ),
          const SizedBox(height: 10),
          MyTextField(
            controller: passwordController,
            hintText: "Password",
            obscureText: true,
          ),
          const SizedBox(height: 10),
          MyTextField(
            controller: confirmPasswordController,
            hintText: "Confirm Password",
            obscureText: true,
          ),
          const SizedBox(height: 10),
          MyButton(
            text: "Sign Up",
            onTap: Register,
          ),

          const SizedBox(height: 25),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary
                ),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text("Login Now",style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
