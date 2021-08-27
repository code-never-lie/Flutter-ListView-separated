import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20
  ];
  tostshow() {
    Fluttertoast.showToast(
        msg: "Number  ",
        toastLength: Toast.LENGTH_SHORT,
        //  gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Home Page"),
      ),
      body: Container(
        child: ListView.separated(
            padding: const EdgeInsets.all(10.0),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  title: Text("Number ${list[index]}"),
                  subtitle: Text("Pakistan"),
                  leading: Icon(Icons.home),
                  trailing: Icon(Icons.done),
                  onTap: () {
                    if (list.any((item) => item.isSelected)) {
                      setState(() {
                        Fluttertoast.showToast(
                            msg: "Number  ",
                            toastLength: Toast.LENGTH_SHORT,
                            //  gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      });
                    }
                  });
            },
            separatorBuilder: (BuildContext context, int index) => Divider(
                  color: Colors.blueAccent,
                  height: 20,
                  thickness: 3,
                ),
            itemCount: list.length),
      ),
    );
  }
}
