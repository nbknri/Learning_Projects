import 'package:flutter/material.dart';
import 'package:task_manager_app/core/widgets/app_text_filed.dart';
import 'package:task_manager_app/core/widgets/primary_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  // ─────────────────────────────────────────
  // Controllers (UI responsibility)
  // ─────────────────────────────────────────
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
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
              Text('Forget Password?', style: textTheme.titleLarge),

              const SizedBox(height: 8),

              Text(
                "Don't worry, it happens. Please enter the email address linked to your account.",
                style: textTheme.bodyMedium,
              ),

              const SizedBox(height: 32),
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

              const SizedBox(height: 32),

              // ─────────────────────────────
              // sign Up button
              // ─────────────────────────────
              PrimaryButton(
                text: 'Crate Account',
                onPressed: () {
                  final email = _emailController.text.trim();

                  debugPrint('Email: $email');
                },
                isLoading: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
