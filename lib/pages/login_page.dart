import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quickbite/components/my_button.dart';
import 'package:quickbite/components/my_textfield.dart';
import 'package:quickbite/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() async{
    final authService = AuthService();
    try{
     /*await here*/ await authService.signInWithEmailPassword(emailController.text, passwordController.text);
    }
    catch(e){
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }

  void forgotPw(){
    showDialog(context: context, builder: (context) => AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.surface,
      title: const Text("User tapped forgot password"),
    ),
    );
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
            "QuickBite",
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
          MyButton(
            text: "Sign in",
            onTap: login,
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Register now",
                  style: TextStyle(
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
