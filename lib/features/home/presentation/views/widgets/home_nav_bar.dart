// ignore_for_file: must_be_immutable, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/features/cart/presentation/views/cart_view.dart';
import 'package:dalel_app/features/home/presentation/views/home_view.dart';
import 'package:dalel_app/features/profile/presentation/views/profile_view.dart';
import 'package:dalel_app/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeNavBarItem extends StatelessWidget {
  HomeNavBarItem({super.key});
  PersistentTabController _controller = PersistentTabController();

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: const [
        HomeView(),
        CartView(),
        SearchView(),
        ProfileView(),
      ],
      backgroundColor: AppColor.primaryColor,
      controller: _controller,
      navBarStyle: NavBarStyle.style12,
      decoration: const NavBarDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      items: [
        PersistentBottomNavBarItem(
          inactiveIcon: const Icon(Icons.home_outlined),
          icon: const Icon(Icons.home),
          activeColorPrimary: AppColor.deepBrown,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.shopping_cart),
          inactiveIcon: const Icon(Icons.shopping_cart_outlined),
          activeColorPrimary: AppColor.deepBrown,
        ),
        PersistentBottomNavBarItem(
          inactiveIcon: const Icon(Icons.search),
          icon: const Icon(Icons.search_rounded),
          activeColorPrimary: AppColor.deepBrown,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person),
          inactiveIcon: const Icon(Icons.person_2_outlined),
          activeColorPrimary: AppColor.deepBrown,
        ),
      ],
    );
  }
}
