import 'package:flutter/material.dart';
import 'package:shopping_app/views/recovery_screen.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  bool clrButton = false;
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 25,),
              const Text(
                'Forgot Password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 50,),
              const Text(
                'Please enter your email address. You will receive a link to create or set a new password via email',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                onChanged: (val) {
                  if (val != '') {
                    setState(() {
                      clrButton = true;
                    });
                  }
                },
                decoration: InputDecoration(
                    labelText: 'Enter Email',
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.email),
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          emailController.clear();
                        });
                      },
                      child: const Icon(
                        Icons.close,
                        size: 14,
                        color: Color(0xffdb3022),
                      )
                    )
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RecoveryScreen())),
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(55),
                    backgroundColor: const Color.fromARGB(255, 250, 85, 35),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                    )
                ),
                child: const Text(
                  'Send Code',
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
