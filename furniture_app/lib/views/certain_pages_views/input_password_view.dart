import 'package:flutter/material.dart';

class InputPasswordView extends StatefulWidget {
  final UnderlineInputBorder borderStyle;
  final AssetImage suffixIcon;
  final AssetImage secondSuffixIcon;

  const InputPasswordView({
    Key? key,
    required this.borderStyle,
    required this.suffixIcon,
    required this.secondSuffixIcon,
  }) : super(key: key);

  @override
  State<InputPasswordView> createState() => _InputPasswordViewState();
}

class _InputPasswordViewState extends State<InputPasswordView> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !isVisible,
      decoration: InputDecoration(
        enabledBorder: widget.borderStyle,
        suffixIcon: isVisible
            ? Transform.scale(
                scale: 0.45,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isVisible = true;
                    });
                  },
                  child: Image(
                    image: widget.suffixIcon,
                    width: 20,
                  ),
                ),
              )
            : Transform.scale(
                scale: 0.45,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isVisible = false;
                    });
                  },
                  child: Image(
                    image: widget.secondSuffixIcon,
                    width: 20,
                  ),
                ),
              ),
      ),
    );
  }
}
