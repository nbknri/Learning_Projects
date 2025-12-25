import 'package:flutter/material.dart';
import 'package:task_manager_app/core/navigation/app_navigator.dart';
import 'package:task_manager_app/core/widgets/app_text_filed.dart';
import 'package:task_manager_app/core/widgets/primary_button.dart';
import 'package:task_manager_app/features/auth/ui/forgot_password_screen.dart';
import 'package:task_manager_app/features/auth/ui/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // ─────────────────────────────────────────
  // Controllers (UI responsibility)
  // ─────────────────────────────────────────
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Password visibility manage
  bool _passwordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ─────────────────────────────
              // Screen Title
              // ─────────────────────────────
              Center(child: Text('Welcome back', style: textTheme.titleLarge)),

              const SizedBox(height: 8),

              Center(
                child: Text(
                  'Please enter your details to sign in.',
                  style: textTheme.bodyMedium,
                ),
              ),

              const SizedBox(height: 32),

              // ─────────────────────────────
              // Email Field
              // ─────────────────────────────
              AppTextFiled(
                titleText: 'Email',
                hintText: 'Enter your email address',
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                suffixIcon: Icons.mail,
              ),

              const SizedBox(height: 16),

              // ─────────────────────────────
              // Password Field
              // ─────────────────────────────
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

              const SizedBox(height: 8),

              // ─────────────────────────────
              // Forget password section
              // ─────────────────────────────
              Align(
                alignment: AlignmentGeometry.centerRight,
                child: TextButton(
                  onPressed: () {
                    AppNavigator.push(context, const ForgotPasswordScreen());
                  },
                  child: const Text('Forget Password?'),
                ),
              ),

              const SizedBox(height: 24),

              // ─────────────────────────────
              // login Button
              // ─────────────────────────────
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

              const SizedBox(height: 24),

              // ───────── Divider ─────────
              Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
                    child: Text('Or continue with'),
                  ),
                  Expanded(child: Divider()),
                ],
              ),

              const SizedBox(height: 16),

              // ─────────────────────────────
              // Social Buttons (stub)
              // ─────────────────────────────
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.g_mobiledata),
                      label: const Text('Google'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.apple),
                      label: const Text('Apple'),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // ─────────────────────────────
              // Navigate to SignUp Page
              // ─────────────────────────────
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?", style: textTheme.bodySmall),
                  TextButton(
                    onPressed: () {
                      AppNavigator.push(context, const SignupScreen());
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
