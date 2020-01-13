import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  static final String routeName = "/error-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (title: Text ('Error 404'),),
        body: Container(
            child: Center(
              child: Text(
                'ERROR 404: \n Screen not found!',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.blue
                ),
              ),
            ),
        ),
    );
  }
}
