import 'package:flutter/material.dart';

import '../../services/constants/color_constants.dart';

class AgreementCheckBox extends StatefulWidget {
  const AgreementCheckBox({Key? key}) : super(key: key);

  @override
  State<AgreementCheckBox> createState() => _AgreementCheckBoxState();
}

class _AgreementCheckBoxState extends State<AgreementCheckBox> {
  bool isFilled = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: ColorConstants.darkBlack,
      value: isFilled,
      splashRadius: 0,
      onChanged: (value) {
        isFilled = value!;
        setState(() {});
      },
    );
  }
}
