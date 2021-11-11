import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bmi_calculator/components/about.dart';
import 'package:flutter_bmi_calculator/screens/home_screen.dart';

class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(
                Icons.more_vert_outlined,
              ),
            );
          }),
          backgroundColor: Color(0xFF0A0E21),
          title: Text("ABOUT  "),
        ),
        drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color(
                0xFF0A0E21), //This will change the drawer background to blue.
            //other styles
          ),
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Center(
                    child: Text(
                      'BMI CALCULATOR',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF0A0E21),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home, color: Color(0xFFd95a00)),
                  title: Text('home'),
                  onTap: () => Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomeScreen())),
                ),
                ListTile(
                  leading: Icon(Icons.info_outline, color: Color(0xFFd95a00)),
                  title: Text('About'),
                  onTap: () => Navigator.push(
                      context, MaterialPageRoute(builder: (_) => AboutMe())),
                ),
              ],
            ),
          ),
        ),
        body: AboutText());
  }
}
