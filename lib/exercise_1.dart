import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 19,
                          child: Container(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Square(Colors.brown),
                                        ),
                                        Expanded(
                                          child: Square(Colors.purple),
                                        ),
                                        Expanded(
                                          child: Square(Colors.teal),
                                        ),
                                        Expanded(
                                          child: Square(Colors.green),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 3,
                                          child: Container(
                                            color: Colors.orangeAccent,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    color: Colors.limeAccent,
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    color: Colors.cyan,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 27,
                          child: Container(
                            color: Colors.brown,
                          ),
                        ),
                        Expanded(
                          flex: 27,
                          child: Container(
                            color: Colors.pink,
                          ),
                        ),
                        Expanded(
                          flex: 27,
                          child: Container(
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                    margin: EdgeInsets.only(right: 10),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            Positioned(
              child: Container(
                width: 150,
                height: 150,
                color: Colors.black12,
              ),
              top: 335,
              left: 30,
            ),
            Positioned(
              child: FloatingActionButton(
                child: Icon(Icons.play_arrow),
              ),
              bottom: 20,
              right: 20,
            )
          ],
        ),
      ),
    );
  }
}

class Square extends StatelessWidget {
  Color _color;
  Square(this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: this._color,
    );
  }
}
