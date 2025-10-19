import 'package:flutter/material.dart';
import 'package:login_signup/widgets/user_form.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return UserForm(
      titleText: "Welcome Back",
      actionSuccessMessage: "Login successfully!",
      checkBoxText: "Remember me",
      checkBoxLinkLabel: "Forget password?",
      buttonLabel: "Sign In",
    );
  }
}
