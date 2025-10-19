import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:login_signup/screens/signin_screen.dart';
import 'package:login_signup/screens/signup_screen.dart';
import 'package:login_signup/theme/theme.dart';
import 'package:login_signup/widgets/custom_scaffold.dart';

class UserForm extends StatefulWidget {
  const UserForm({
    super.key,
    this.isSignUpForm = false,
    required this.titleText,
    required this.actionSuccessMessage,
    required this.checkBoxText,
    required this.checkBoxLinkLabel,
    required this.buttonLabel,
  });

  final bool isSignUpForm;
  final String titleText;
  final String actionSuccessMessage;
  final String checkBoxText;
  final String checkBoxLinkLabel;
  final String buttonLabel;

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final _formSignInKey = GlobalKey<FormState>();
  bool _isAccept = false;
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          const Expanded(flex: 1, child: SizedBox(height: 10)),
          Expanded(
            flex: 7,
            child: Container(
              padding: EdgeInsets.fromLTRB(25.0, 40.0, 25.0, 0),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: _formSignInKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Login Form title
                      Text(
                        widget.titleText,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w900,
                          color: ligtColorScheme.primary,
                        ),
                      ),

                      const SizedBox(height: 40),

                      // Fullname filed section
                      widget.isSignUpForm
                          ? TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter your Full Name";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                labelText: "Full Name",
                                hintText: "Enter Full Name",
                                hintStyle: const TextStyle(
                                  color: Colors.black26,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black12,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black12,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                prefixIcon: Icon(Icons.person),
                                prefixIconColor: ligtColorScheme.secondary,
                              ),
                            )
                          : SizedBox(),

                      const SizedBox(height: 20),

                      // Email Field Section
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your Email";
                          }
                          if (!value.contains("@") || !value.contains(".")) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "Enter Email",
                          hintStyle: const TextStyle(color: Colors.black26),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Icon(Icons.mail),
                          prefixIconColor: ligtColorScheme.secondary,
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Password Filed section
                      TextFormField(
                        obscureText: !_isPasswordVisible,
                        obscuringCharacter: "*",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your Password";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter Password",
                          hintStyle: const TextStyle(color: Colors.black26),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Icon(Icons.lock),
                          prefixIconColor: ligtColorScheme.secondary,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                            icon: _isPasswordVisible
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                          ),
                          suffixIconColor: ligtColorScheme.secondary,
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Agree Section
                      Row(
                        mainAxisAlignment: widget.isSignUpForm
                            ? MainAxisAlignment.start
                            : MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: _isAccept,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isAccept = value!;
                                  });
                                },
                                activeColor: ligtColorScheme.primary,
                                side: BorderSide(
                                  color: ligtColorScheme.primary,
                                  width: 2.0,
                                ),
                              ),
                              Text(
                                widget.checkBoxText,
                                style: TextStyle(color: Colors.black45),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              widget.checkBoxLinkLabel,
                              style: TextStyle(
                                color: ligtColorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      // Action Button Section
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formSignInKey.currentState!.validate()) {
                              if (widget.isSignUpForm && _isAccept) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      "Please agree to the processing of personal datas",
                                    ),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(widget.actionSuccessMessage),
                                  ),
                                );
                              }
                            }
                          },
                          child: Text(
                            widget.buttonLabel,
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Diveder Section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey.withValues(alpha: 0.5),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 10.0,
                            ),
                            child: Text(
                              "${widget.buttonLabel} With",
                              style: TextStyle(color: Colors.black45),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey.withValues(alpha: 0.5),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      // Social Media Connection Section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Brand(Brands.facebook),
                          Brand(Brands.twitter),
                          Brand(Brands.google),
                          Brand(Brands.apple_logo),
                        ],
                      ),

                      const SizedBox(height: 20),

                      // Question section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.isSignUpForm
                                ? "Already have an account? "
                                : "Don't have an account? ",
                            style: TextStyle(color: Colors.black45),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => widget.isSignUpForm
                                    ? SignInScreen()
                                    : SignUpScreen(),
                              ),
                            ),
                            child: Text(
                              widget.buttonLabel == "Sign Up"
                                  ? "Sign In"
                                  : "Sign Up",
                              style: TextStyle(
                                color: ligtColorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
