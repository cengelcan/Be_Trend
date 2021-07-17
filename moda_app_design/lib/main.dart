import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int _counterForward = 0;
  late int _counterComment = 0;
  late int _counterLike = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" ★ Be Trend", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                showProfiles("assets/model1.jpeg", "assets/dolce.png"),
                SizedBox(
                  width: 20,
                ),
                showProfiles("assets/model2.jpeg", "assets/versace.png"),
                SizedBox(
                  width: 20,
                ),
                showProfiles("assets/model3.jpeg", "assets/nike.png"),
                SizedBox(
                  width: 20,
                ),
                showProfiles("assets/model1.jpeg", "assets/chanel.jpg"),
                SizedBox(
                  width: 20,
                ),
                showProfiles("assets/model2.jpeg", "assets/nike.png"),
                SizedBox(
                  width: 20,
                ),
                showProfiles("assets/model3.jpeg", "assets/nike.png"),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          sharedItems(),
          sharedItems(),
          sharedItems(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assistant_photo),
            label: 'Event',
          ),
        ],
      ),
    );
  }

  sharedItems() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 550,
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage("assets/model1.jpeg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Anna",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "14 mins ago",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert),
                      color: Colors.grey,
                      iconSize: 30,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                  style: TextStyle(color: Colors.black45),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.3,
                      height: 210,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("assets/modelgrid1.jpeg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: (MediaQuery.of(context).size.width - 100) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage("assets/modelgrid2.jpeg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 100,
                          width: (MediaQuery.of(context).size.width - 100) / 2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage("assets/modelgrid3.jpeg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 25,
                      child: Center(
                        child: Text(
                          "# Hashtag 1",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.brown.withOpacity(0.4)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 100,
                      height: 25,
                      child: Center(
                        child: Text(
                          "# Hashtag 2",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.brown.withOpacity(0.4)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 40,
                  color: Colors.black.withOpacity(0.5),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _counterForward++;
                        });
                      },
                      icon: Icon(
                        Icons.reply,
                        textDirection: TextDirection.rtl,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                    Text(
                      "$_counterForward k",
                      style: TextStyle(color: Colors.black.withOpacity(0.4)),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _counterComment++;
                        });
                      },
                      icon: Icon(
                        Icons.message_rounded,
                        textDirection: TextDirection.rtl,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                    Text(
                      "$_counterComment k",
                      style: TextStyle(color: Colors.black.withOpacity(0.4)),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _counterLike++;
                        });
                      },
                      icon: Icon(
                        Icons.favorite,
                        textDirection: TextDirection.rtl,
                        color: Colors.red.shade400,
                      ),
                    ),
                    Text(
                      "$_counterLike k",
                      style: TextStyle(color: Colors.black.withOpacity(0.4)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget showProfiles(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                  image: AssetImage(
                    imagePath,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 50,
              top: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                    image: AssetImage(
                      logoPath,
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          child: Center(
            child: Text(
              "Follow",
              style: TextStyle(color: Colors.white),
            ),
          ),
          width: 70,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
          ),
        ),
      ],
    );
  }
}
