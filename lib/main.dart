import 'package:flutter/material.dart';
import 'package:soul_speak/widgets/drawer_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const DrawerWidget(),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Hello, What can I do for you",
                    style: TextStyle(fontSize: 18, color: Color(0xff181818)),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      suffixIcon: const Icon(
                        Icons.send_sharp,
                        color: Colors.grey,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                      //hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Write...",
                      fillColor: Colors.white70),
                ),
                const SizedBox(
                  height: 40,
                )
              ]),
        ),
      ),
    );
  }
}
