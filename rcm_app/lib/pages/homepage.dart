import 'package:flutter/material.dart';
import 'package:rcm_app/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var days = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
          child:
              Container(child: Text("Welcome to the end of $days workshop"))),
      drawer: MyDrawer(),
    );
  }
}
