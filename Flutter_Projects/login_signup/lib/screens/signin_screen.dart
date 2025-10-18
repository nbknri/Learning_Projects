import 'package:flutter/material.dart';
import 'package:login_signup/widgets/custom_scaffold.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Text("Login Screen"),
      );
  }
}