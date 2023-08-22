import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/container_button_modal.dart';

import '../theme/app_colors.dart';

class ProductDetailsPopUp extends StatelessWidget {
  final iStyle = TextStyle(
    color: AppColors.black,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );

  ProductDetailsPopUp({super.key});

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
