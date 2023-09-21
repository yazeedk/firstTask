import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Task'),
        ),
        body: ShowHideTextWidget(),
      ),
    );
  }
}

class ShowHideTextWidget extends StatefulWidget {
  @override
  _ShowHideTextWidgetState createState() => _ShowHideTextWidgetState();
}

class _ShowHideTextWidgetState extends State<ShowHideTextWidget> {
  bool _isVisible = false;

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/yazeed.jpg',
            width: 200.0,
          ),
          SizedBox(height: 20.0),
          Text(
            'Yazeed Deryah',
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(height: 20.0),
          _isVisible
              ? Text(
            'CAP!',
            style: TextStyle(fontSize: 20.0),
          )
              : Container(),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: _toggleVisibility,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0), // Adjust the radius as needed
              ),
            ),
            child: Text(_isVisible ? 'Specialty' : 'Specialty'),
          ),
        ],
      ),
    );
  }
}
