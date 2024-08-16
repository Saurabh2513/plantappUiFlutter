import 'package:flutter/material.dart';
import 'package:plant_app_ui/pages/colors.dart';
import 'package:plant_app_ui/widgets/boldable_text.dart';

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
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset("assets/icons/menu.png"),
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  children: [BoldableText("Hi Uishopy!"),],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
