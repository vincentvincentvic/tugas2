import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState( => _HomePageState();
  }

  class _HomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context) {
String cityName = "Jakarta";
int currTemp = 32;
int maxtemp = 35;
int minTemp = 31;
Size size = MediaQuery.of(context).size;
var brigtness = MediaQuery.of(context).platformBrightness;

return Scaffold(
  body: Center (
    child: Container(
      height: size.height,
      width: size.height,
      decoration: BoxDecoration (
        color: isDarkMode ? Colors.black : Colors.white,
      ),
      child: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.01,
                    horizontal: size.width * 0.5,
                  ),
                  child: Row (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FaIcon(
                        FontAwesomeIcons;
                      )
                    ]
                  ),
                  )
                ],
              ),
            )
          ],
        )
      )
    ),
  ),
);
    }
  }

