import 'package:flutter/material.dart';

class AboutText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 500,
          padding: EdgeInsets.all(40.0),
          child: Center(
            child: Text(
                'Flutter BMI Calculator \n Version 1.0.0 \n \n This application was made by Ezhar Mahesa, \n a student of SMK 10 majoring in software engineering',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w100,
                ),
                textAlign: TextAlign.center),
          ),
        ),
        Text(
          "2021 \u00a9 Ezhar Mahesa",
          style: TextStyle(color: Color(0xFFd95a00)),
        ),
      ],
    );
  }
}
