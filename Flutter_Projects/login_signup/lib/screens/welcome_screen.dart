import 'package:flutter/material.dart';
import 'package:login_signup/screens/signin_screen.dart';
import 'package:login_signup/screens/signup_screen.dart';
import 'package:login_signup/theme/theme.dart';
import 'package:login_signup/widgets/custom_scaffold.dart';
import 'package:login_signup/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
            flex: 8,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 0
              ),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Welcome Back!\n",
                        style: TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: "\nEnter personal details to your employee account",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                  ),
              ),
            ),
            ),
            Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                      child: WelcomeButton(
                        buttonText: "Sign In",
                        onTap: SignInScreen(),
                        buttonColor: Colors.transparent,
                        textColor: Colors.white,
                      )
                      ),
                     Expanded(child: WelcomeButton(
                      buttonText: "Sign Up",
                      onTap: SignUpScreen(),
                      buttonColor: Colors.white,
                      textColor: ligtColorScheme.primary,
                     )),
                  ],
                ),
              )
              ),
        ],
      ),
    );
  }
}