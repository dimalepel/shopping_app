import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/container_button_modal.dart';

import '../theme/app_colors.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<String> imageList = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
    'assets/images/image4.jpg',
  ];

  List<String> productTitles = [
    'Warm Zipper',
    'Knotted Woo!',
    'Zipper Win',
    'Child Win'
  ];

  List<int> prices = [
    100,
    200,
    350,
    400
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        leading: const BackButton(),
        backgroundColor: AppColors.transparent,
        foregroundColor: AppColors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              ListView.builder(
                itemCount: imageList.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                          splashRadius: 20,
                          activeColor: AppColors.orange,
                          value: true,
                          onChanged: (val) {

                          },
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            imageList[index],
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productTitles[index],
                              style: TextStyle(
                                color: AppColors.black,
                                fontWeight: FontWeight.w900,
                                fontSize: 18
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Text(
                              'Hooded Jacket',
                              style: TextStyle(
                                color: AppColors.darkGrey,
                                fontSize: 16
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Text(
                              '\$${prices[index].toString()}',
                              style: TextStyle(
                                color: AppColors.orange,
                                fontSize: 18,
                                fontWeight: FontWeight.w900
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.remove,
                              color: AppColors.green,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '1',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.add,
                              color: AppColors.green,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Select All',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Checkbox(
                    splashRadius: 20,
                    activeColor: AppColors.orange,
                    value: false,
                    onChanged: (val) {},
                  ),
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
                color: AppColors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total Payment',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '\$300.50',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: AppColors.orange,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              InkWell(
                onTap: () {},
                child: ContainerButtonModal(
                  iText: 'Checkout',
                  containerWidth: MediaQuery.of(context).size.width,
                  bgColor: AppColors.orange,
                ),
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
