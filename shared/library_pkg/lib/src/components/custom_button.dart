import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({required this.child, this.onPressed, super.key});

  final Widget child;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        backgroundColor: const Color(0xFF3ACAAB),
        minimumSize: Size(
          MediaQuery.sizeOf(context).width / 10,
          MediaQuery.sizeOf(context).height / 13,
        ),
      ),
      child: child,
    );
  }
}
