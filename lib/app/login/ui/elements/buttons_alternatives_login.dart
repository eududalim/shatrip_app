import 'package:flutter/material.dart';
import 'package:shatrip/app/login/ui/theme/login_theme.dart';

class ButtonsAlternativesLogin extends StatelessWidget {
  const ButtonsAlternativesLogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Image.asset('assets/images/google.png'),
      label: Text(
        'Entrar usando o Google',
        style: LoginTheme.loginTextBody1,
      ),
    );
  }
}
