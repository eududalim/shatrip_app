import 'package:flutter/material.dart';
import 'package:shatrip/app/home/ui/themes/home_theme.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
              ),
            ),
          ),
          Row(
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
                          decoration: HomeTheme.inputDecoration2(icon: Icon(Icons.location_on_sharp, color: Colors.white, size: 19,))),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      height: 33,
                      child: TextField(
                          style: HomeTheme.homeTextSearch1,
                          cursorColor: Colors.white,
                          decoration: HomeTheme.inputDecoration2()),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
