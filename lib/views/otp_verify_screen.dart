import 'package:flutter/material.dart';
import 'package:shopping_app/views/recovery_screen.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

import '../theme/app_colors.dart';

class OTPVeifyScreen extends StatefulWidget {
  const OTPVeifyScreen({super.key});

  @override
  State<OTPVeifyScreen> createState() => _OTPVeifyScreenState();
}

class _OTPVeifyScreenState extends State<OTPVeifyScreen> {
  TextEditingController textEditingController = TextEditingController(text: '');

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: AppColors.orange),
      borderRadius: BorderRadius.circular(10.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        foregroundColor: AppColors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 100,),
              const Text(
                'Enter OTP',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 50,),
              const Text(
                'Please enter the OTP code that we have sent you to your number, please check you number phone and enter here OTP to verify.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15
                ),
              ),
              const SizedBox(height: 30,),
              TextFieldPin(
                  textController: textEditingController,
                  autoFocus: true,
                  codeLength: 4,
                  alignment: MainAxisAlignment.center,
                  defaultBoxSize: 65.0,
                  margin: 10,
                  selectedBoxSize: 60.0,
                  textStyle: const TextStyle(fontSize: 20),
                  defaultDecoration: _pinPutDecoration.copyWith(
                      border: Border.all(
                        color: AppColors.grey,
                      )
                  ),
                  selectedDecoration: _pinPutDecoration,
                  onChange: (code) {
                    setState(() {

                    });
                  }),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RecoveryScreen())),
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(55),
                    backgroundColor: AppColors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                    )
                ),
                child: const Text(
                  'Verify',
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
