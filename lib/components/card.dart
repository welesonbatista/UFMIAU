import 'package:aplicativouniversitario/utilities/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardHome extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  CardHome(this.title, this.icon);
  String title;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          child: Card(
            shadowColor: shadow,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13.0),
            ),
            color: Colors.white,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .4,
              height: MediaQuery.of(context).size.height * .09,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        title,
                        style: text,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 5.0, 2.0),
                      child: Icon(icon, color: black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
