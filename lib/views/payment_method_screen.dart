import 'package:flutter/material.dart';
import 'package:shopping_app/views/home_screen.dart';
import 'package:shopping_app/views/shipping_address_screen.dart';
import 'package:shopping_app/widgets/container_button_modal.dart';

import '../theme/app_colors.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int _type = 1;
  void _handleRadio(Object? e) {
    setState(() {
      _type = e as int;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Method'),
        leading: const BackButton(),
        backgroundColor: AppColors.transparent,
        foregroundColor: AppColors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 40,),
                  Container(
                    width: size.width,
                    height: 55,
                    decoration: BoxDecoration(
                      border: _type == 1
                          ? Border.all(width: 1, color: AppColors.orange)
                          : Border.all(width: 1, color: AppColors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.transparent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: AppColors.orange,
                                ),
                                Text(
                                  'Amazon Pay',
                                  style: _type == 1
                                      ? TextStyle(
                                    fontSize: 15,
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w500
                                  ) : TextStyle(
                                      fontSize: 15,
                                      color: AppColors.grey,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/images/amazon-pay.png',
                              width: 40,
                              height: 40,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    width: size.width,
                    height: 55,
                    decoration: BoxDecoration(
                      border: _type == 2
                          ? Border.all(width: 1, color: AppColors.orange)
                          : Border.all(width: 1, color: AppColors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.transparent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(
                                  value: 2,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: AppColors.orange,
                                ),
                                Text(
                                  'Credit Card',
                                  style: _type == 2
                                      ? TextStyle(
                                      fontSize: 15,
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w500
                                  ) : TextStyle(
                                      fontSize: 15,
                                      color: AppColors.grey,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Image.asset(
                              'assets/images/visa.png',
                              width: 40,
                              height: 40,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(width: 10,),
                            Image.asset(
                              'assets/images/mastercard.png',
                              width: 40,
                              height: 40,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    width: size.width,
                    height: 55,
                    decoration: BoxDecoration(
                      border: _type == 3
                          ? Border.all(width: 1, color: AppColors.orange)
                          : Border.all(width: 1, color: AppColors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.transparent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(
                                  value: 3,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: AppColors.orange,
                                ),
                                Text(
                                  'Paypal',
                                  style: _type == 3
                                      ? TextStyle(
                                      fontSize: 15,
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w500
                                  ) : TextStyle(
                                      fontSize: 15,
                                      color: AppColors.grey,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/images/paypal.png',
                              width: 60,
                              height: 40,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    width: size.width,
                    height: 55,
                    decoration: BoxDecoration(
                      border: _type == 4
                          ? Border.all(width: 1, color: AppColors.orange)
                          : Border.all(width: 1, color: AppColors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.transparent,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(
                                  value: 4,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: AppColors.orange,
                                ),
                                Text(
                                  'Google Pay',
                                  style: _type == 4
                                      ? TextStyle(
                                      fontSize: 15,
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w500
                                  ) : TextStyle(
                                      fontSize: 15,
                                      color: AppColors.grey,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/images/icon2.png',
                              width: 60,
                              height: 40,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 100,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sub-Total',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey,
                        ),
                      ),
                      const Text(
                        '\$300.50',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shipping Fee',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey,
                        ),
                      ),
                      const Text(
                        '\$15.00',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 30,
                    color: AppColors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Payment',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey,
                        ),
                      ),
                      Text(
                        '\$315.50',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: AppColors.orange
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 70,),
                  InkWell(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ShippingAddressScreen())),
                    child: ContainerButtonModal(
                      iText: 'Confirm Payment',
                      bgColor: AppColors.orange,
                      containerWidth: size.width,
                    ),
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
