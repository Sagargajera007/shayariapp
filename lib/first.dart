import 'package:shayariapp/second.dart';
import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  List<String> titles = [
    "Motivational",
    "Friendship",
    "Love",
    "Mornimg",
    "Brokenheart",
    "Romantic"
  ];
  List<String> photos = [
    "asset/image/motivation.jpg",
    "asset/image/friend.jpg",
    "asset/image/love.jpg",
    "asset/image/morning.jpg",
    "asset/image/broken heart.jpg",
    "asset/image/romantic.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shayari"),
        leading: Icon(Icons.menu),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient:
              LinearGradient(colors: [Colors.lightGreen, Colors.teal])),
        ),
        elevation: 15,
        titleSpacing: 20,
      ),
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return  Card(
            elevation: 10,
            margin: EdgeInsets.all(20),
            color: Colors.lightGreen[500],
            child: ListTile(
              leading: Image.asset(
                photos[index],
                height: 100,
                width: 50,
                fit: BoxFit.cover,
              ),
              title: Text(
                titles[index],
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return second(titles[index], photos[index], index);
                  },
                ));
              },
            ),
          );
        },
      ),
    );
  }
}
