import 'package:apex_store/screens/main_screens/cart_screen.dart';
import 'package:apex_store/screens/main_screens/favourite_screen.dart';
import 'package:apex_store/screens/main_screens/home_screen.dart';
import 'package:apex_store/screens/main_screens/profile_screen.dart';
import 'package:apex_store/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selecterdIndex = 0;

  final List<Widget> _mainPages = const [
    HomeScreen(),
    FavouriteScreen(),
    CartScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            currentIndex: _selecterdIndex,
            onTap: (index) {
              setState(() {
                _selecterdIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/house.svg",
                  semanticsLabel: "Home-svg",
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/heart.svg",
                  semanticsLabel: "heart-svg",
                ),
                label: "Favourite",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/shopping-cart.svg",
                  semanticsLabel: "shopping-cart-svg",
                ),
                label: "Cart",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/icons/user-round.svg",
                  semanticsLabel: "user-svg",
                ),
                label: "Profile",
              ),
            ],
            selectedItemColor: AppColors.appBlackColor,
            unselectedItemColor: AppColors.appGreyColor,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: false,
          ),
        ),
      ),
      body: _mainPages[_selecterdIndex],
    );
  }
}
