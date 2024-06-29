import 'package.dart';

void main() async {
  // await dotenv.load(fileName: ".env");

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: allProviders,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Intro(),
        routes: {
          '/intro_screen': (context) => const Intro(),
          '/cart_screen': (context) => const CartScreen(),
          '/shop_screen': (context) => const ShopScreen(),
        },
      ),
    );
  }
}
