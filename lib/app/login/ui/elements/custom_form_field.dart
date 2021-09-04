import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField(
      {Key key,
      @required this.labelText,
      @required this.hintText,
      @required this.onTap,
      this.enable = true,
      this.keyboardType = TextInputType.text,
      this.icon,
      this.obscureText = false})
      : super(key: key);

  final String labelText;
  final String hintText;
  final Function onTap;
  final enable;
  final TextInputType keyboardType;
  final Icon icon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          obscureText: obscureText,
          style: obscureText
              ? TextStyle(
                  letterSpacing: 3,
                )
              : null,
          keyboardType: keyboardType,
          onTap: onTap,
          decoration: InputDecoration(
            labelText: labelText,
            labelStyle: TextStyle(letterSpacing: 0),
            prefixIcon: icon,
            enabled: enable,
            contentPadding: EdgeInsets.all(10.0),
            hintText: hintText,
            hintStyle: obscureText
                ? TextStyle(
                    letterSpacing: 3,
                    fontWeight: FontWeight.w600,
                  )
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
