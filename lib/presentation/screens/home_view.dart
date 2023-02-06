import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SwitchScreen(),
              Center(
                child: ClipOval(
                  child: Container(
                    color: Colors.grey[350],
                    width: 350,
                    height: 300,
                    child: Image.asset(
                      bundle: null,
                      'assets/images/Pepper.png',
                      width: 250,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Container(
                height: 250,
                width: 200,
                color: Colors.grey[200],
                child: const Text(
                  "Speech",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const Text("Animations: "),
              Container(
                color: Colors.grey[350],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class SwitchScreen extends StatefulWidget {
  @override
  SwitchClass createState() => new SwitchClass();
}

class SwitchClass extends State {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Switch(
            value: isSwitched,
            activeColor: Colors.green,
            onChanged: (value) {
              //print("VALUE : $value");
              setState(() {
                isSwitched = value;
              });
            },
          ),
          const SizedBox(
            height: 15.0,
          ),
          Text(
            'Value : $isSwitched',
            style: const TextStyle(color: Colors.red, fontSize: 20.0),
          )
        ]);
  }
}
