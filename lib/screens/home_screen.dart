import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/screens/Calculator_screen.dart';
import 'package:flutter_bmi_calculator/screens/about_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        title: Text("BMI CALCULATOR"),
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
      body: Container(
        child: CalculatorScreen(),
      ),
    );
  }
}
