import 'package:flutter/material.dart';

abstract class CustomFonts {
  static BoxDecoration mainContainerStyle() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      boxShadow: <BoxShadow>[
        BoxShadow(
          offset: const Offset(0, 4),
          blurRadius: 10,
          color: Colors.black.withOpacity(0.05),
        ),
      ],
    );
  }

  static InputDecoration customTextFieldDecoration() {
    return const InputDecoration(
      filled: true,
      fillColor: Color(0xFFEFEFEF),
      border: UnderlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        borderSide: BorderSide.none,
      ),
    );
  }
}
