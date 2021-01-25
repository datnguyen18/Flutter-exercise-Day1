import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConvertTool();
  }
}

class ConvertTool extends StatefulWidget {
  @override
  _ConvertToolState createState() => _ConvertToolState();
}

class _ConvertToolState extends State<ConvertTool> {
  final celsiusController = TextEditingController();
  final fahrenheitController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    celsiusController.dispose();
    fahrenheitController.dispose();
    super.dispose();
  }

  void _handleChangeCToF(String text) {
      String fahrenheit = '';
      if(celsiusController.text.isNotEmpty) {
        fahrenheit = '${double.parse(celsiusController.text)* 1.8 +32}';
      }
      fahrenheitController.text = fahrenheit;
  }

  void _handleChangeFToC(String text) {
      String celsius = '';
      if(fahrenheitController.text.isNotEmpty) {
        celsius = '${(double.parse(fahrenheitController.text)-32)/1.8}';
      }
      celsiusController.text = celsius;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Convert tool'),
        ),
        body:Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Celsius °C'
              ),
              controller: celsiusController,
              onChanged: _handleChangeCToF,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Fahrenheit °F'
              ),
              controller: fahrenheitController,
              onChanged: _handleChangeFToC,
            )
          ],
        ),
      ),
    );
  }
}


