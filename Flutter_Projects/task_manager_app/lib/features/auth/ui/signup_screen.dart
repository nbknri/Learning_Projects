import 'package:flutter/material.dart';
import 'package:task_manager_app/core/widgets/app_text_filed.dart';
import 'package:task_manager_app/core/widgets/primary_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _passwordVisible = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                  'Create an Account',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Center(
                child: Text(
                  'Enter your details to sign up.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),

              const SizedBox(height: 25),

              // Name field section
              AppTextFiled(
                titleText: 'Name',
                hintText: 'Enter your Name',
                controller: _nameController,
                suffixIcon: Icons.person,
              ),

              const SizedBox(height: 25),

              // Email field section
              AppTextFiled(
                titleText: 'Email',
                hintText: 'name@example.com',
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                suffixIcon: Icons.mail,
              ),

              const SizedBox(height: 25),

              // Password Field section
              AppTextFiled(
                titleText: 'Password',
                hintText: 'At least 6 characters',
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

              const SizedBox(height: 35),

              // Action Button section
              PrimaryButton(
                text: 'Crate Account',
                onPressed: () {
                  final name = _nameController.text.trim();
                  final email = _emailController.text.trim();
                  final password = _passwordController.text.trim();

                  debugPrint('Name: $name');
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
                    "Already have an account?",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Log In'),
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
