import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  void _sendFile(){
    int result = 8 * 2;
    print("Sending $result to the receiver");
  }

  void _SearchPressed(){
    print("Search Pressed");
  }

  void _shareFile(){
    print("File shared successfully!");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green.shade700,
        title: new Text("Fency Day"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.send),
              onPressed: _sendFile),

          new IconButton(
              icon: new Icon(Icons.search),
              onPressed: _SearchPressed),

          new IconButton(
              icon: new Icon(Icons.share),
              onPressed: _shareFile)
        ],
      ),

      //Other Properties
      backgroundColor: Colors.grey.shade100,
      body: new Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Hellooo!",
              textDirection: TextDirection.ltr,
              style: new TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 14.5,
              ),
            ),

            new InkWell(
              child: new Text("Link Button!", style: new TextStyle(fontSize: 18.5, color: Colors.blue),),
              onTap: ()=> debugPrint("Button Link tapped!"),
            )

          ],
        ),
      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: () => debugPrint("Floating action Button pressed!"),
        backgroundColor: Colors.deepOrange,
        tooltip: "Gooing Up!",
        child: new Icon(Icons.call_missed),
        elevation: 16,
      ),

      /**
       * Testing Bottom Navigation Bar
       */
      bottomNavigationBar: new BottomNavigationBar(items: [
        new BottomNavigationBarItem(icon: new Icon(Icons.add), title: new Text("Add")),
        new BottomNavigationBarItem(icon: new Icon(Icons.print), title: new Text("Print")),
        new BottomNavigationBarItem(icon: new Icon(Icons.call_missed), title: new Text("Missed"))
      ], onTap: (int i) => debugPrint("Position $i tapped"),),
    );
  }
}
