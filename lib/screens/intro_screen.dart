
import '../package.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor().background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_bag,
              size: 70,
              color: AppColor().inversePrimary,
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
              style: TextStyle(color: AppColor().inversePrimary),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onTap: () => Navigator.pushNamed(context, '/shop_screen'),
              child: const Icon(Icons.arrow_forward_ios_outlined),
            )
          ],
        ),
      ),
    );
  }
}
