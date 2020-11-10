import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            leading: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            title: Text('Profil Devanty'),
            centerTitle: true,
            backgroundColor: Colors.lightBlue,
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.thumb_up),
                  color: Colors.white,
                  onPressed: (null)),
              IconButton(
                  icon: Icon(Icons.thumb_down),
                  color: Colors.white,
                  onPressed: (null)),
            ],
          ),
          body: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30),
              child: ClipOval(
                child: Image.network(
                  'https://wallpapercave.com/wp/wp5285080.jpg',
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text('Putu Rosdyana Junia Devanty',
                style: TextStyle(fontSize: 28, color: Colors.white)),
            Text('http://www.Rosdyana.com',
                style: TextStyle(fontSize: 15, color: Colors.white)),
            Expanded(
                child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: GridView.count(crossAxisCount: 2, children: <Widget>[
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //children: <Widget>[
                      Menu(text: "Singaraja", icon: Icons.my_location),
                      Menu(text: "Tampekan", icon: Icons.home),
                      Menu(text: "All Genre", icon: Icons.music_note),
                      Menu(text: "Undiksha", icon: Icons.location_city),
                    ])))
          ]))));
}

class Menu extends StatelessWidget {
  Menu({this.text, this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(50.0),
            ),
            color: Colors.pink[200]),
        child: Center(
            child: Column(children: <Widget>[
          Spacer(),
          Icon(
            icon,
            size: 105,
            color: Colors.white,
          ),
          Spacer(),
          Text(
            text,
            style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ])),
      ),
    );
  }
}
