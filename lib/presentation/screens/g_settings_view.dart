import 'package:flutter/material.dart';

class GSettingsView extends StatefulWidget{
  @override
  State<GSettingsView> createState() => _GSettingsViewState();
}

class _GSettingsViewState extends State<GSettingsView> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar:AppBar(
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
      body: MyStatefulWidget(),
    ));
  }
}class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _lightIsOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: FractionalOffset.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.lightbulb_outline,
                color: _lightIsOn ? Colors.yellow.shade600 : Colors.black,
                size: 60,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  // Toggle light when tapped.
                  _lightIsOn = !_lightIsOn;
                });
              },
              child: Container(
                color: Colors.yellow.shade600,
                padding: const EdgeInsets.all(8),
                // Change button text when light changes state.
                child: Text(_lightIsOn ? 'TURN LIGHT OFF' : 'TURN LIGHT ON'),
              ),
            ),
          ],
        ),
      ),
    );
  }}