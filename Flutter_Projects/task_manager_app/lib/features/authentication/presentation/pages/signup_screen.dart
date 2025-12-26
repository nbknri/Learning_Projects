import 'package:flutter/material.dart';
import 'package:task_manager_app/core/theme/app_colors.dart';
import 'package:task_manager_app/core/widgets/app_text_filed.dart';
import 'package:task_manager_app/core/widgets/primary_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // ─────────────────────────────────────────
  // Controllers (UI responsibility)
  // ─────────────────────────────────────────
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // ─────────────────────────────────────────
  // UI state (allowed at UI level)
  // ─────────────────────────────────────────
  bool _obscurePassword = true;
  bool _agreedToTerms = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ─────────────────────────────
              // Screen Title
              // ─────────────────────────────
              Text('Create an Account', style: textTheme.titleLarge),

              const SizedBox(height: 8),

              Text(
                'Enter your details to sign up.',
                style: textTheme.bodyMedium,
              ),

              const SizedBox(height: 32),

              // ─────────────────────────────
              // Name Field
              // ─────────────────────────────
              AppTextFiled(
                titleText: 'Full Name',
                hintText: 'Enter your Full Name',
                controller: _nameController,
                suffixIcon: Icons.person,
              ),

              const SizedBox(height: 16),

              // ─────────────────────────────
              // Email Field
              // ─────────────────────────────
              AppTextFiled(
                titleText: 'Email',
                hintText: 'name@example.com',
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
                hintText: 'At least 6 characters',
                controller: _passwordController,
                isObscureText: _obscurePassword,
                suffixIcon: _obscurePassword
                    ? Icons.visibility_off
                    : Icons.visibility,
                suffixOnPressed: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                },
              ),

              const SizedBox(height: 16),

              // ─────────────────────────────
              // Terms & Privacy
              // ─────────────────────────────
              Row(
                children: [
                  Checkbox(
                    value: _agreedToTerms,
                    onChanged: (value) {
                      setState(() {
                        _agreedToTerms = value ?? false;
                      });

                      debugPrint(_agreedToTerms.toString());
                    },
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Wrap(
                      children: [
                        Text('I agree to the ', style: textTheme.bodySmall),
                        Text(
                          ' Terms of Service ',
                          style: textTheme.bodySmall?.copyWith(
                            color: AppColors.primary,
                          ),
                        ),
                        Text('and ', style: textTheme.bodySmall),
                        Text(
                          'Privacy Policy',
                          style: textTheme.bodySmall?.copyWith(
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // ─────────────────────────────
              // sign Up button
              // ─────────────────────────────
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
              // Back to Login screen
              // ─────────────────────────────
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?", style: textTheme.bodySmall),
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
