import 'package:flutter/material.dart';
import '../theme/login_theme.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue[900],
                Colors.blue[400]
              ],
            )),
          ),
          Opacity(
            opacity: 0.54,
            child: Image.asset(
              'assets/images/background1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 20,
                child: Container(
                  // padding: EdgeInsets.only(top: 70),
                  alignment: Alignment.center,
                  child: Text(
                    'SHATRiP',
                    textAlign: TextAlign.center,
                    style: LoginTheme.loginTitle1,
                    textScaleFactor: 1,
                  ),
                ),
              ),
              Expanded(
                flex: 60,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Text(
                        '\n\nA expressão Lorem ipsum em design gráfico e editoração é um texto padrão em latim utilizado na produção gráfica para preencher os espaços de',
                        style: LoginTheme.loginTextBody1,
                      ),
                      Text(
                        '\n\nA expressão Lorem ipsum em design gráfico e editoração é um texto padrão em latim utilizado na produção gráfica para preencher os espaços de',
                        style: LoginTheme.loginTextBody1,
                      ),
                      Text(
                        '\n\nA expressão Lorem ipsum em design gráfico e editoração é um texto padrão em latim utilizado na produção gráfica para preencher os espaços de',
                        style: LoginTheme.loginTextBody1,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 20,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                          child: Text('Criar conta'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
