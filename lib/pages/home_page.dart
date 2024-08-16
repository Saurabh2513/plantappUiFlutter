import 'package:flutter/material.dart';
import 'package:plant_app_ui/pages/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                    child: Container(
                      height: 300,
                      width: double.maxFinite,
                      color: MainColor,
                    )),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Image.asset("assets/icons/menu.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20, top: 60, left: 20),
                  child: Row(
                    children: [
                      Text(
                        "Hi Uishopy!",
                        style: new TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Spacer(),
                      Image.asset("assets/image/logo.png"),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 270, left: 20, right: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                 //     decoration: BoxDecoration(),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 300,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  label: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25, top: 10),
                                    child: Text(
                                      "Search",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: MainColor.withOpacity(0.5)),
                                    ),
                                  ),
                                  border: InputBorder.none),
                            ),
                          ),
                          Container(
                              height: 70,
                              width: 70,
                              child: Image.asset("assets/icons/search.png")),
                        ],
                      ),
                      width: double.maxFinite,
                      height: 60,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
