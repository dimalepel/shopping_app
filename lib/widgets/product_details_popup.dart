import 'package:flutter/material.dart';
import 'package:shopping_app/views/navigation_screen.dart';
import 'package:shopping_app/widgets/container_button_modal.dart';

import '../theme/app_colors.dart';

class ProductDetailsPopUp extends StatefulWidget {

  const ProductDetailsPopUp({super.key});

  @override
  State<ProductDetailsPopUp> createState() => _ProductDetailsPopUpState();
}

class _ProductDetailsPopUpState extends State<ProductDetailsPopUp> {
  final iStyle = TextStyle(
    color: AppColors.black,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );

  List<Color> clrs = [
    AppColors.red,
    AppColors.green,
    AppColors.indigo,
    AppColors.amber
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: AppColors.transparent,
          context: context,
          builder: (context) => Container(
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Size: ',
                            style: iStyle,
                          ),
                          const SizedBox(height: 20,),
                          Text(
                            'Color: ',
                            style: iStyle,
                          ),
                          const SizedBox(height: 20,),
                          Text(
                            'Total: ',
                            style: iStyle,
                          ),
                        ],
                      ),
                      const SizedBox(width: 30,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 10,),
                              Text('S', style: iStyle,),
                              const SizedBox(width: 30,),
                              Text('M', style: iStyle,),
                              const SizedBox(width: 30,),
                              Text('L', style: iStyle,),
                              const SizedBox(width: 30,),
                              Text('XL', style: iStyle,),
                              const SizedBox(width: 30,),
                            ],
                          ),
                          const SizedBox(height: 16,),
                          Row(
                            children: [
                              for (var i = 0; i < 4; i++)
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 6),
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: clrs[i],
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(height: 16,),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                '-',
                                style: iStyle,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                '1',
                                style: iStyle,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                '+',
                                style: iStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Payment',
                        style: iStyle,
                      ),
                      Text(
                        '\$40.00',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.orange,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const NavigationScreen(pageId: 1)));
                    },
                    child: ContainerButtonModal(
                      containerWidth: MediaQuery.of(context).size.width,
                      iText: 'Checkout',
                      bgColor: AppColors.orange,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      child: ContainerButtonModal(
        containerWidth: MediaQuery.of(context).size.width / 1.5,
        iText: 'Buy Now',
        bgColor: AppColors.orange,
      ),
    );
  }
}
