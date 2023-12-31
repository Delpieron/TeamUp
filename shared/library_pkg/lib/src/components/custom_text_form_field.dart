import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:library_pkg/src/helpers/default_input_decoration.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.controller,
    this.inputFormatter,
    this.label,
    this.padding,
    this.obscureText = false,
    super.key,
  });

  final String? label;
  final EdgeInsets? padding;
  final TextEditingController controller;
  final List<TextInputFormatter>? inputFormatter;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(18),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width / 3,
        child: TextFormField(
          obscureText: obscureText,
          inputFormatters: inputFormatter,
          controller: controller,
          cursorColor: Colors.blue,
          decoration: getDefaultInputDecoration(label),
        ),
      ),
    );
  }
}
