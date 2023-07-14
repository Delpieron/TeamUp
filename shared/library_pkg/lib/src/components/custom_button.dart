import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({required this.child, required this.backgroundColor, this.onPressed, super.key});

  final Widget child;
  final Color backgroundColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        backgroundColor: backgroundColor,
        minimumSize: Size(
          MediaQuery.sizeOf(context).width / 10,
          MediaQuery.sizeOf(context).height / 13,
        ),
      ),
      child: child,
    );
  }
}
