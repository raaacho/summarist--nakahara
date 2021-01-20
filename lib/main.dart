import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Birds Catalog')
          ),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: MyWidget(),
        ),
      ),
    ),
  );
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child:ImageBox(),
        ), 
        Expanded(child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Lark',
                        style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 24)),
                    Container(
                      height: 100,
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star_border),
                        ],
                      ),
                    ),
                  ]
                ),
                Expanded(child: Container(
                  child: Text(
                    'Larks are passerine birs of the family Alaudidae. Larks have a cosmopolitan distribution with the largest number of species occuring in Africa. Only a single species, the horned lark, occurs in North America, and only Horsfield\'s bush lark occurs in Australia. Habitats vary widely, but many spieces live in dry regions.',
                    style: TextStyle(color: Colors.grey),
                  ),
                )),
              ],
            )
          )
        ),
      ],
    );
  }
}

class ImageBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      fit: BoxFit.fill,
      image: AssetImage('images/image.png'),
    );
  }
}

