import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/views/home_screen.dart';
import 'package:shopping_app/views/profile_screen.dart';
import '../theme/app_colors.dart';
import 'cart_screen.dart';
import 'favorites_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;
  List<Widget> pages = [
    const HomeScreen(),
    const CartScreen(),
    const FavoritesScreen(),
    const ProfileScreen()
  ];

  List<IconData> iconsList = [
    Icons.home,
    Icons.shopping_cart,
    Icons.favorite,
    Icons.person
  ];

  List<String> pagesTitle = [
    'Home',
    'Cart',
    'Favorites',
    'Profile'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: pages.length,
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? AppColors.orange : AppColors.grey;
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconsList[index],
                size: 25,
                color: color
              ),
              const SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                    pagesTitle[index],
                  style: TextStyle(
                    fontSize: 12,
                    color: color
                  ),
                )
              )
            ],
          );
        },
        gapLocation: GapLocation.none,
        activeIndex: pageIndex,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 10,
        rightCornerRadius: 10,
        elevation: 0,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        }
      ),
    );
  }
}


