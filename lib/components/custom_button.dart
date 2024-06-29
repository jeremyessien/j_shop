import 'package:flutter/material.dart';

import '../theme/light_mode.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;
  const CustomButton({Key? key, this.onTap, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor().primary
        ),
        child: child,
      ),
    );
  }
}
