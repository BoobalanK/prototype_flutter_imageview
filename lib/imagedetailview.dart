import 'package:flutter/material.dart';

class ImageDetailView extends StatelessWidget {
  const ImageDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Detail View')),
      body: Column(
        children: <Widget>[
          imageSection,
          titleSection,
          buttonSection,
          textSection
        ],
      ),
    );
  }
}

Widget imageSection = Image.asset(
  'images/lake.jpg',
  fit: BoxFit.cover,
);

Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              const Text(
                'Oeschinen Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ])),
        const Icon(Icons.star, color: Colors.red),
        const Text('41')
      ],
    ));

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.call, color: Colors.blue),
          Container(
              margin: const EdgeInsets.only(top: 8),
              child: const Text(
                'CALL',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue),
              ))
        ]),
    Column(children: [
      const Icon(Icons.near_me, color: Colors.blue),
      Container(
          margin: const EdgeInsets.only(top: 8),
          child: const Text(
            'CALL',
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: Colors.blue),
          ))
    ]),
    Column(children: [
      const Icon(Icons.share, color: Colors.blue),
      Container(
          margin: const EdgeInsets.only(top: 8),
          child: const Text(
            'CALL',
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: Colors.blue),
          ))
    ])
  ],
);

Widget textSection = const Padding(
    padding: EdgeInsets.all(32),
    child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true));
