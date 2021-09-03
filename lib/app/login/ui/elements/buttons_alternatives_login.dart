import 'package:flutter/material.dart';
import 'package:shatrip/app/login/ui/theme/login_theme.dart';

class ButtonsAlternativesLogin extends StatelessWidget {
  const ButtonsAlternativesLogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Image.asset('assets/images/google.png'),
          style: LoginTheme.buttonStyle1(context),
        )
      ],
    ));
  }
}
