import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shatrip/app/core/routes/app_routes.dart';
import 'package:shatrip/app/home/ui/pages/home_page.dart';
import 'package:shatrip/app/login/ui/elements/buttons_alternatives_login.dart';
import 'package:shatrip/app/login/ui/elements/custom_form_field.dart';
import 'package:shatrip/app/login/ui/theme/login_theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).accentColor
                ])),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Bem vindo de volta!',
                        style: Theme.of(context).textTheme.headline2,
                        overflow: TextOverflow.fade,
                      ),
                    )),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 6,
                              offset: Offset(-2, 3),
                              color: Colors.black45)
                        ],
                        color: Colors.white),
                    child: Column(
                      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 30),
                        CustomFormField(
                          labelText: 'Email',
                          hintText: 'email@exemplo.com',
                          onTap: () {},
                          icon: Icon(Icons.alternate_email_outlined),
                        ),
                        SizedBox(height: 40),
                        CustomFormField(
                            labelText: 'Senha',
                            hintText: '******',
                            icon: Icon(Icons.lock_outline_rounded),
                            obscureText: true,
                            onTap: () {}),
                        SizedBox(height: 30),
                        Container(
                          width: double.maxFinite,
                          // height: 55,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.toNamed(Routes.HOME);
                            },
                            child: Text('Entrar'),
                            style: LoginTheme.buttonStyle2(context),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          ButtonsAlternativesLogin(),
                          Row(
                            children: [
                              TextButton.icon(
                                onPressed: Get.back,
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                label: Text(
                                  'Voltar',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
