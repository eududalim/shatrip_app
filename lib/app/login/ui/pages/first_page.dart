import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shatrip/app/login/controller/first_controller.dart';
import '../theme/login_theme.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FirstController());

    return SafeArea(
      child: Material(
        child: Stack(children: [
          Image.asset(
            'assets/images/background1.jpg',
            fit: BoxFit.cover,
            height: double.maxFinite,
            width: double.maxFinite,
          ),
          Opacity(
            opacity: 0.43,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).accentColor
                ],
              )),
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
                  // alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: LoginTheme.buttonStyle1(context),
                              onPressed: controller.goToSignUpPage,
                              child: Text('Criar conta'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: LoginTheme.buttonStyle2(context),
                              onPressed: controller.goToLoginPage,
                              child: Text('Entrar'),
                            ),
                          ),
                        ],
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
