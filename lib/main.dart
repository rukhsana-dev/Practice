import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row and Colunm'),
        ),
        body: Column(children: <Widget>[
          Expanded(
              flex: 4,
              child: Container(
                color: const Color(0xFF8d4383),
                alignment: Alignment.center,
                child: Text(
                  "#8d4383",
                  style: ThemeStyles.containerText,
                ),
              )),
          // Row 2 40% of acceen

          Expanded(
              flex: 4,
              child: Row(
                children: [
                  // Middle Row 1 50% of acceen
                  Expanded(
                    flex: 5,
                    child: Container(
                      color: const Color(0xFF2AA650),
                      alignment: Alignment.center,
                      child: Text(
                        "#2AA650",
                        style: ThemeStyles.containerText,
                      ),
                    ),
                  ),
                  // Middle Row 2 50% of acceen

                  Expanded(
                    flex: 5,
                    child: Column(children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.indigo,
                          alignment: Alignment.center,
                          child: Text(
                            " Colors.indigo",
                            style: ThemeStyles.containerText,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          color: Colors.red,
                          alignment: Alignment.center,
                          child: Text(
                            " Colors.red",
                            style: ThemeStyles.containerText,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              )),
          // Row 3 20% of acceen

          Expanded(
            flex: 8,
            child: Container(
              color: Colors.deepPurpleAccent,
              alignment: Alignment.center,
              child: Text(
                "Colors.deepPurpleAccent",
                style: ThemeStyles.containerText,
              ),
            ),
          ),
          // Expanded(
          //   flex: 2,
          //   child: Container(
          //     color: const Color(0xFF58AAE8),
          //     alignment: Alignment.center,
          //     child: Text(
          //       "#58AAE8",
          //       style: ThemeStyles.containerText,
          //     ),
          //   ),
          // ),
        ]),
      ),
    );
  }
}

class ThemeStyles {
  static var containerText;
}

// 0xFFE74E33
