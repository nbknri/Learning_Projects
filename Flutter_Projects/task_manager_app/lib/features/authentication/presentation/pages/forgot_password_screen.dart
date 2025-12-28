import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager_app/features/authentication/presentation/widgets/app_text_filed.dart';
import 'package:task_manager_app/features/authentication/presentation/widgets/primary_button.dart';
import 'package:task_manager_app/features/authentication/presentation/bloc/auth_bloc.dart';

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

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {},
          authenticated: (_) {},
          unauthenticated: (){},
          passwordResetSuccess: () => ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Password reset email sent'))),
          failure: (message) => ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(message))),
        );
      },
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
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
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      return PrimaryButton(
                        text: 'Send Reset Link',
                        onPressed: () {
                          final email = _emailController.text.trim();
                          if (email.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Please enter email')),
                            );
                            return;
                          }
            
                          context.read<AuthBloc>().add(
                            AuthEvent.forgetPassword(email: email),
                          );
                        },
                        isLoading: state.maybeWhen(
                          loading: () => true,
                          orElse: () => false,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
