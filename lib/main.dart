import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Com_demo',
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text('E-Startup'),
          ),
          body: Center(
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => showitem()));
              },
              child: Text('Show Item'),
              color: Colors.lightBlueAccent[100],
            ),
          ),
        ),
      ),
    );
  }
}

class showitem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ]),
            child: displaypage()),
      ),
    );
  }
}

class displaypage extends StatefulWidget {
  @override
  _displaypageState createState() => _displaypageState();
}

class _displaypageState extends State<displaypage> {
  var image =
      'https://assets.mspimages.in/wp-content/uploads/2020/07/OnePlus-Nord-2.jpg';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          GestureDetector(
            onDoubleTap: () {
              setState(() {
                image =
                    'https://images.idgesg.net/images/article/2020/07/oneplus-nord-100852438-large.jpg';
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.network(
                image,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            width: double.infinity,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey[200],
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ]),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(5),
                child: Text(
                  'ONEPLUS NORD',
                  style: TextStyle(fontSize: 20),
                )),
          ),
          Container(height: 50, child: specslist()),
          Container(
            padding: EdgeInsets.all(10),
            child:Container(height:300,child: disinfo())
            )
        ],
      ),
    );
  }
}
class disinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children:[ Text(
          "The OnePlus One is a cracker of a smartphone, but the rave reviews may have hyped it too much. The company does make some compromises in order to keep the price low and you may just feel you got less than you expected. It's still one of the best value for money smartphones you can buy today. CyanogenMod and the Sandstone design give it a very new overall feel and the device is a power user's dream since it comes pre-rooted. If you like phablets, then this is the best that you can ask for. All you need to do is get an invite.",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ]
      ),
    );
  }
}

class specslist extends StatefulWidget {
  @override
  _specslistState createState() => _specslistState();
}

class _specslistState extends State<specslist> {
  var li = [
    Colors.blue,
    Colors.grey,
    Colors.grey,
    Colors.grey,
    Colors.grey,
    Colors.grey,
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: [
        IconButton(
            onPressed: () {
              setState(() {
                li.clear();
                for (var i = 0; i < 6; i++) {
                  if (i == 0)
                    li.add(Colors.blue);
                  else
                    li.add(Colors.grey);
                }
              });
            },
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            icon: Icon(
              Icons.info,
              color: li[0],
              size: 35,
            )),
        IconButton(
            onPressed: () {
              setState(() {
                li.clear();
                for (var i = 0; i < 6; i++) {
                  if (i == 1)
                    li.add(Colors.blue);
                  else
                    li.add(Colors.grey);
                }
              });
            },
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            icon: Icon(
              Icons.phone_android,
              color: li[1],
              size: 35,
            )),
        IconButton(
            onPressed: () {
              setState(() {
                li.clear();
                for (var i = 0; i < 6; i++) {
                  if (i == 2)
                    li.add(Colors.blue);
                  else
                    li.add(Colors.grey);
                }
              });
            },
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            icon: Icon(
              Icons.camera_alt,
              color: li[2],
              size: 35,
            )),
        IconButton(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            onPressed: () {
              setState(() {
                li.clear();
                for (var i = 0; i < 6; i++) {
                  if (i == 3)
                    li.add(Colors.blue);
                  else
                    li.add(Colors.grey);
                }
              });
            },
            icon: Icon(
              Icons.battery_unknown,
              color: li[3],
              size: 35,
            )),
        IconButton(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            onPressed: () {
              setState(() {
                li.clear();
                for (var i = 0; i < 6; i++) {
                  if (i == 4)
                    li.add(Colors.blue);
                  else
                    li.add(Colors.grey);
                }
              });
            },
            icon: Icon(
              Icons.settings_input_antenna,
              color: li[4],
              size: 35,
            )),
        IconButton(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            onPressed: () {
              setState(() {
                li.clear();
                for (var i = 0; i < 6; i++) {
                  if (i == 5)
                    li.add(Colors.blue);
                  else
                    li.add(Colors.grey);
                }
              });
            },
            icon: Icon(
              Icons.category,
              color: li[5],
              size: 35,
            )),
      ],
    );
  }
}
