import 'package:flutter/material.dart';
import 'package:shatrip/app/home/ui/elements/home_header.dart';
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
              child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                expandedHeight: 230,
                flexibleSpace: FlexibleSpaceBar(background: HomeHeaderWidget()),
              ),
              SliverGrid(
                  delegate: SliverChildListDelegate([
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        color: Colors.white70,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                  ]),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                  ))
            ],
          )

              /* ListView(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'De:',
                            style: HomeTheme.homeTextSearch1,
                          ),
                          SizedBox(height: 28),
                          Text(
                            'Para:',
                            style: HomeTheme.homeTextSearch1,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 8),
                              height: 33,
                              child: TextField(
                                  style: HomeTheme.homeTextSearch1,
                                  cursorColor: Colors.white,
                                  decoration: HomeTheme.inputDecoration2),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 8),
                              height: 33,
                              child: TextField(
                                  style: HomeTheme.homeTextSearch1,
                                  cursorColor: Colors.white,
                                  decoration: HomeTheme.inputDecoration2),
                            ),
                          ],
                        ),
                      ),                      
                    ],
                  ),
                ),
                Container(width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(25))
                  ),
                  child: Column(
                    children: [
                      
                    ],
                  ),
                )
              ],
            ), */
              )
        ],
      ),
    );
  }
}

/// MediaQuery.of(context).size.height > 640 ? 24 : 8,