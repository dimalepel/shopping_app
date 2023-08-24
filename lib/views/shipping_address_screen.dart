import 'package:flutter/material.dart';
import 'package:shopping_app/views/home_screen.dart';
import 'package:shopping_app/widgets/container_button_modal.dart';

import '../theme/app_colors.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Shipping Address'),
        leading: const BackButton(),
        backgroundColor: AppColors.transparent,
        foregroundColor: AppColors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const SizedBox(height: 40,),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Full Name',
                      border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Mobile Number',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Address',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'City',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'State/Province/Region',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Zip Code (Postal Code)',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Country',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30,),
                InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen())),
                  child: ContainerButtonModal(
                    iText: 'Add Address',
                    containerWidth: MediaQuery.of(context).size.width,
                    bgColor: AppColors.orange,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
