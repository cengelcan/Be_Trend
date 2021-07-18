import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  var imgPath;

  Detail({this.imgPath});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(widget.imgPath), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          left: 15,
          right: 15,
          bottom: 45,
          child: Material(
            borderRadius: BorderRadius.circular(15),
            elevation: 10,
            child: Container(
              height: 210,
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey),
                            image: DecorationImage(
                                image: AssetImage("assets/dress1.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "LAMINATED",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Louis Vuitton",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 180,
                            child: Text(
                              "A shoulder-spanning collar caps off the chic and easy style of a belt-wrapped coat with a clean, minimalist look.",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Divider(
                      color: Colors.black,
                      height: 0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$1100",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          child: FloatingActionButton(
                            backgroundColor: Colors.brown,
                            child: Center(
                              child: Icon(Icons.arrow_forward_ios_rounded),
                            ),
                            onPressed: null,
                          ),
                        )
                      ],
                    ),
                  ),
                 
                ],
              ),
            ),
          ),
          
        ),
         Positioned(
                    top: MediaQuery.of(context).size.height / 2,
                    left: 70,
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("LAMINATED",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                            Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 20,)
                          ],
                        ),
                      ),
                    ),
                  )
      ]),
    );
  }
}
