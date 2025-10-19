import 'package:flutter/material.dart';
import 'package:login_signup/widgets/user_form.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return UserForm(
      isSignUpForm: true,
      titleText: "Get Started",
      actionSuccessMessage: "Account created successfully!",
      checkBoxText: "I agree to the processing of ",
      checkBoxLinkLabel: "Personal Data",
      buttonLabel: "Sign Up",
    );
  }
}
