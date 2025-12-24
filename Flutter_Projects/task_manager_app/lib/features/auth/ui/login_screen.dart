import 'package:flutter/material.dart';
import 'package:task_manager_app/core/widgets/app_text_filed.dart';
import 'package:task_manager_app/core/widgets/primary_button.dart';
import 'package:task_manager_app/features/auth/ui/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _passwordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),

              // Screen Title with subtitle section
              Center(
                child: Text(
                  'Welcome back',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Center(
                child: Text(
                  'Please enter your details to sign in.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),

              const SizedBox(height: 25),

              // Email field section
              AppTextFiled(
                titleText: 'Email',
                hintText: 'Enter your email address',
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                suffixIcon: Icons.mail,
              ),

              const SizedBox(height: 25),

              // Password Field section
              AppTextFiled(
                titleText: 'Password',
                hintText: 'Enter your password',
                controller: _passwordController,
                isObscureText: !_passwordVisible,
                suffixIcon: _passwordVisible
                    ? Icons.visibility
                    : Icons.visibility_off,
                suffixOnPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              ),

              const SizedBox(height: 10),

              // Forget button section
              Align(
                alignment: AlignmentGeometry.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Forget Password?'),
                ),
              ),

              const SizedBox(height: 15),

              // Action Button section
              PrimaryButton(
                text: 'Login',
                onPressed: () {
                  final email = _emailController.text.trim();
                  final password = _passwordController.text.trim();

                  debugPrint('Email: $email');
                  debugPrint('Password: $password');
                },
                isLoading: false,
              ),

              const SizedBox(height: 25),

              // Sign Up button section
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const SignupScreen()),
                      );
                    },
                    child: const Text('Sign Up'),
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
