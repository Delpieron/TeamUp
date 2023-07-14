import 'package:flutter/material.dart';

class CustomDropdownButton<T> extends StatelessWidget {
  const CustomDropdownButton({required this.value, this.items, this.onChanged, super.key});

  final T value;
  final List<DropdownMenuItem<T>>? items;
  final void Function(T?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: DropdownButton<T>(
          dropdownColor: Colors.blue,
          underline: const ColoredBox(
            color: Colors.transparent,
          ),
          focusColor: Colors.transparent,
          value: value,
          items: items,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
