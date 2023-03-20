import 'package:flutter/material.dart';
import 'package:twitter_clone/common/rounded_small_button.dart';
import 'package:twitter_clone/constants/ui_constants.dart';
import 'package:twitter_clone/features/auth/widgets/auth_field.dart';
import 'package:twitter_clone/theme/pallete.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final appbar = UIConstants.appBar();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              //textfield1
              AuthField(
                controller: emailController,
                hintText: 'Email',
              ),
              const SizedBox(height: 25),

              AuthField(
                controller: passwordController,
                hintText: 'Password',
              ),
              const SizedBox(height: 40),
              //button
              Align(
                alignment: Alignment.topRight,
                child: RoundedSmallButton(onTap: () {}, label: 'Done', 
                ),
              ),
              const SizedBox(height: 40),
              RichText(text: TextSpan(
                text: "Don't have an account?",
                children: [
                  TextSpan(
                    text: ' Sign up',
                  )
                ],
              ),
              ),
            ],
          )
          ),
        ),
      ),
    );
  }
}

class ReUsableAppBar extends StatelessWidget {
  const ReUsableAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }
}