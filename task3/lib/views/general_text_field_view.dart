import 'package:flutter/material.dart';
import 'package:task3/services/constants/colors.dart';

class GeneralTextFieldView extends StatefulWidget {
  final String labelText;
  final TextStyle labelTextStyle;
  final String hintText;
  final TextStyle hintTextStyle;
  final double contentPadding;
  final bool isPasswordTextField;

  const GeneralTextFieldView({
    super.key,
    required this.labelText,
    required this.labelTextStyle,
    required this.hintText,
    required this.hintTextStyle,
    required this.contentPadding,
    required this.isPasswordTextField,
  });

  @override
  State<GeneralTextFieldView> createState() => _GeneralTextFieldViewState();
}

class _GeneralTextFieldViewState extends State<GeneralTextFieldView> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// #label text
        LabelTextView(
          text: widget.labelText,
          textStyle: widget.labelTextStyle,
        ),

        /// #text field
        TextField(
          obscureText: !isVisible,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: widget.contentPadding),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: CustomColors.lightGrey),
            ),
            hintText: widget.hintText,
            hintStyle: widget.hintTextStyle,
            suffixIcon: widget.isPasswordTextField
                ? GestureDetector(
                    onTap: () {
                      isVisible = !isVisible;
                      setState(() {});
                    },
                    child: Icon(
                      isVisible ? Icons.visibility : Icons.visibility_off,
                    ),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}

class LabelTextView extends StatelessWidget {
  final String text;
  final TextStyle textStyle;

  const LabelTextView({
    super.key,
    required this.text,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          text,
          style: textStyle,
        ),
      ],
    );
  }
}
