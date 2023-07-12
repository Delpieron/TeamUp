import 'package:flutter/material.dart';

InputDecoration getDefaultInputDecoration([String? label]) => InputDecoration(
      hintText: label,
      filled: true,
      fillColor: Colors.white,
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          width: 2,
          color: Colors.white,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          width: 2,
          color: Colors.white,
        ),
      ),
    );
