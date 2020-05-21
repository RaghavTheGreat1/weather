import 'package:flutter/material.dart';



class FutureForecastCard extends StatelessWidget {

  final bool roundedBox;  // If true, then borderRadius property will applied.
  final Color topBoxContainerColor; 
  final Color bottomBoxContainerColor; 
  final mainBox;
  FutureForecastCard({
    this.roundedBox = true,
    this.topBoxContainerColor,
    this.bottomBoxContainerColor,
    this.mainBox,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 100,
          width: 25,
          decoration: BoxDecoration(
            color: Color(0xFFF88A54),
            borderRadius: BorderRadius.circular(roundedBox == true ? 25 : 0),
          ),
        ),
        Container(
          height: 50,
          width: 25,
          decoration: BoxDecoration(
            color: Color(0xFFE36E79),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45),
            ),
          ),
        ),
      ],
    );
  }
}
