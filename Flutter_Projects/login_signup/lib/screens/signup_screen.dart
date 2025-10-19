import 'package:flutter/material.dart';
import 'package:login_signup/widgets/user_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
