import 'package:flutter/material.dart';
import 'package:shopping_app/views/forgot_screen.dart';
import 'package:shopping_app/views/signup_screen.dart';

import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 120,
              ),
              Image.asset('assets/images/freed.png'),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Enter Email',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email)
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Enter Password',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotScreen())),
                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 250, 85, 35),
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())),
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(55),
                          backgroundColor: const Color.fromARGB(255, 250, 85, 35),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          )
                      ),
                      child: const Text(
                        'Log In',
                        style: TextStyle(
                            fontSize: 18
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Don\'t Have an Account?',
                          style: TextStyle(
                              fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        TextButton(
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupScreen())),
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 250, 85, 35),
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
