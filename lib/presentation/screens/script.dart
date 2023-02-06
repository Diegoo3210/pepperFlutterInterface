import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class script extends StatefulWidget{
  @override
  State<script> createState() => _scriptState();
}

class _scriptState extends State<script> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          'assets/images/SinfoniaLogo.png',
          width: 150,
        ),
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {
                                            Navigator.of(context).pushNamed('/');

                    },
                    child: const Text("Home", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                  )),
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      //cambia de vista
                      Navigator.of(context).pushNamed('/globalSettings');
                    },
                    child: Text("GlobalSettings", style: TextStyle(color: Colors.white, ),)
                  )),
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/scripts');
                    },
                    child: Text("Scripts", style: TextStyle(color: Colors.white, ),)
                  )),
            ],
          ),
        ],
      ),
      body: TextField(),
    ));
  }
}