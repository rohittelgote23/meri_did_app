import 'package:flutter/material.dart';
import 'package:meri_didi_app/homescreen.dart';
import 'package:meri_didi_app/components/custom_text_feild.dart';
import 'package:meri_didi_app/screens/sign_in_page.dart';
import 'package:meri_didi_app/theme.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _mobController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Centers content vertically

              children: [
                // Sign Up Text
                Align(
                  alignment: Alignment.center,
                  child: Text('Sign Up', style: titleBigBoldTextStyle),
                ),
                SizedBox(height: 15),
                // Mobile Number Label
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Mobile Number', style: labelTextStyle),
                ),
                CustomTextField(
                  editingController: _mobController,
                  isValidatorEnabled: false,
                  hint: 'Enter Mobile Number',
                ),
                SizedBox(height: 10),

                // Full Name Label
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Full Name', style: labelTextStyle),
                ),
                CustomTextField(
                  editingController: _fullNameController,
                  isValidatorEnabled: false,
                  hint: 'Enter Full Name',
                ),
                SizedBox(height: 10),

                // Email Address Label
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Email Address', style: labelTextStyle),
                ),
                CustomTextField(
                  editingController: _emailController,
                  isValidatorEnabled: false,
                  hint: 'Enter Email Address',
                ),
                SizedBox(height: 10),

                // Password Label
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Password', style: labelTextStyle),
                ),
                CustomTextField(
                  editingController: _passController,
                  isValidatorEnabled: false,
                  hint: 'Enter Password',
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Enter OTP', style: labelTextStyle),
                ),
                // OTP Row with Resend Button
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          CustomTextField(
                            editingController: _otpController,
                            isValidatorEnabled: false,
                            hint: 'Enter OTP',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend OTP',
                        style: labelTextStyle.copyWith(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),

                // Sign In Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Homescreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: lightYellowColor,
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Text('Sign Up', style: btnTextStyle),
                ),

                SizedBox(height: 20),

                // New User Text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already a Customer?'),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignInScreen(),
                          ),
                        );
                      }, // Add navigation here
                      child: Text(
                        'Sign In',
                        style: labelTextStyle.copyWith(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
