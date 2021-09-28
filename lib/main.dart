import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/widgets/category_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; //this gonna give us total height and with of our device
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .40,
            decoration: BoxDecoration(
              color: Color(0xFF3949ab),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/blue.png"),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu),
                        iconSize: 40,
                        color: Color(0xFFFFFFFF),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.account_circle),
                        iconSize: 40,
                        color: Color(0xFFFFFFFF),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Dashboard",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Color(0xFFE3F2FD), borderRadius: BorderRadius.only(topLeft: Radius.circular(55), topRight: Radius.circular(55))),
                    child: Padding(
                      padding: EdgeInsets.all(40),
                      child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: .85,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        children: <Widget>[
                          CategoryCard(
                            title: "Scan Item",
                            svgSrc: "assets/icons/scan1.svg",
                            press: () {},
                          ),
                          CategoryCard(
                            title: "Shopping Cart",
                            svgSrc: "assets/icons/carts.svg",
                            press: () {},
                          ),
                          CategoryCard(
                            title: "Inventory",
                            svgSrc: "assets/icons/inventory1.svg",
                            press: () {},
                          ),
                          CategoryCard(
                            title: "Reports",
                            svgSrc: "assets/icons/report2.svg",
                            press: () {},
                          ),
                          CategoryCard(
                            title: "Create Product",
                            svgSrc: "assets/icons/box1.svg",
                            press: () {},
                          ),
                          CategoryCard(
                            title: "Settings",
                            svgSrc: "assets/icons/setting2.svg",
                            press: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
