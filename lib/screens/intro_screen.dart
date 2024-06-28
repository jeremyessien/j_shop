import 'package:flutter/material.dart';
import 'package:j_shop/components/custom_button.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Icon(
            Icons.shopping_bag,
            size: 70,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'J shop',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Shop quality products with us',
            style:
                TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
          ),
          CustomButton(
            onTap: ()=> Navigator.pushNamed(context, '/home_screen'),
            child: const Icon(Icons.arrow_forward_ios_outlined),
          )
        ],
      ),
    );
  }
}
