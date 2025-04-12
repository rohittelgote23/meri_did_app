import 'package:flutter/material.dart';
import 'package:meri_didi_app/homescreen.dart';
import 'package:meri_didi_app/components/custom_text_feild.dart';
import 'package:meri_didi_app/screens/sign_up_page.dart';
import 'package:meri_didi_app/theme.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _mobController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo
                    Container(
                      width: 120,
                      height: 120,
                      padding: EdgeInsets.all(8), // inner padding
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: bgColor,
                        border: Border.all(color: lightYellowColor, width: 2),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/logo.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    SizedBox(height: 30),
                    // Sign In Text
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Sign In',
                        style: titleBigBoldTextStyle,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Mobile Number',
                        style: labelTextStyle,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 5),
                    // Email Field
                    CustomTextField(
                      editingController: _mobController,
                      isValidatorEnabled: false,
                      hint: 'Enter Mobile Number',
                      prefixIcon: Icons.phone,
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Password',
                        style: labelTextStyle,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 5),
                    // password feild
                    CustomTextField(
                      editingController: _passController,
                      isValidatorEnabled: false,
                      hint: 'Enter Password',
                      prefixIcon: Icons.lock,
                    ),

                    SizedBox(height: 5),

                    // Forgot Password
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'Forgot Password?',
                        style: labelTextStyle.copyWith(color: Colors.blue),
                      ),
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
                      child: Text('Sign In', style: btnTextStyle),
                    ),

                    SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Not Registered?'),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpPage(),
                              ),
                            );
                          }, // Add navigation here
                          child: Text(
                            'Sign Up',
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
        ),
      ),
    );
  }
}
