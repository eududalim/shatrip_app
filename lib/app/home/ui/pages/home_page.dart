import 'package:flutter/material.dart';
import 'package:shatrip/app/home/ui/themes/home_theme.dart';
import '../elements/home_background.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HomeBackground(),
          SafeArea(
            child: Column(
              children: [
                Container(
                  //   color: Colors.indigo.withAlpha(255),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[300],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height > 640
                              ? 30
                              : 8),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Flexible(
                              flex: 1,
                              child: Container(
                                child: Text(
                                  'De:',
                                  style: HomeTheme.homeTextSearch1,
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              child: Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white)),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_pin,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    Text(
                                      'Carinhanha',
                                      style: HomeTheme.homeTextSearch1,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height:
                            MediaQuery.of(context).size.height > 640 ? 24 : 8,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Flexible(
                              flex: 1,
                              child: Container(
                                child: Text(
                                  'Para:',
                                  style: HomeTheme.homeTextSearch1,
                                ),
                              ),
                            ),
                            Flexible(
                                flex: 2,
                                child: Container(
                                  height: 31,
                                  child: TextField(
                                    style: HomeTheme.homeTextSearch1,
                                    decoration: HomeTheme.inputDecoration1(hintText: 'Para onde deseja ir?')
                                  ),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
