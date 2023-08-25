import 'package:flutter/material.dart';
import 'package:shopping_app/views/navigation_screen.dart';
import 'package:shopping_app/widgets/container_button_modal.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/check.png',
              width: 250,
            ),
            SizedBox(height: 20,),
            Text(
              'Success!',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                letterSpacing: 1
              ),
            ),
            SizedBox(height: 20,),
            Text(
              'Your order will be delivered soon.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1
              ),
            ),
            SizedBox(height: 5,),
            Text(
              'Thank You! For choosing our app.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1
              ),
            ),
            SizedBox(height: 40,),
            InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationScreen(pageId: 0))),
              child: ContainerButtonModal(
                iText: 'Continue Shopping',
                bgColor: Colors.orange,
                containerWidth: MediaQuery.of(context).size.width,
              ),
            )
          ],
        ),
      ),
    );
  }
}
