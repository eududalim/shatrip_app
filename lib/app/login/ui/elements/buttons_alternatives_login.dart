import 'package:flutter/material.dart';
import 'package:shatrip/app/login/ui/theme/login_theme.dart';

class ButtonsAlternativesLogin extends StatelessWidget {
  const ButtonsAlternativesLogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/images/google.png'),
            SizedBox(width: 16),
            Text('Entrar usando o Google')
          ],
        ),
        style: LoginTheme.buttonStyle1(context).copyWith(
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ));
  }
}
