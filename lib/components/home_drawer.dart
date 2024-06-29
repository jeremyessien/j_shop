import 'package:flutter/material.dart';
import 'package:j_shop/components/drawer_tile.dart';

import '../theme/light_mode.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor().background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          Column(
            children: [
              DrawerHeader(
            child: Center(
              child: Icon(
                Icons.shopping_bag,
                size: 70,
                color: AppColor().inversePrimary,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
              DrawerTile(
                text: 'Shop',
                icon: Icons.home,
                onTap: () => Navigator.pop(context),
              ),
              DrawerTile(
                  text: 'Cart',
                  icon: Icons.shopping_cart,
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.pushNamed(context, '/cart_screen');
                  }),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: DrawerTile(
              text: 'Exit',
              icon: Icons.logout,
              onTap: () => Navigator.pushNamedAndRemoveUntil(context, '/intro_screen', (route) => false),
            ),
          ),
        ],
      ),
    );
  }
}
