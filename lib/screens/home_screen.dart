import 'package:flutter/material.dart';
import 'package:j_shop/components/home_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('J-Commerce'), backgroundColor: Colors.transparent, elevation: 0,
      ),
      drawer: const HomeDrawer(),
    );
  }
}
