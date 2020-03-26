import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: new Search(),
    ),
  );
}

class Search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SearchState();
  }
}

class SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => debugPrint('back')),
        title: new Text('Search'),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search),
              onPressed: () => debugPrint('Search')),
        ],
      ),
      body: new Container(
        margin: EdgeInsets.all(15.0),
        padding: EdgeInsets.all(12.0),
        child: new Column(
          children: <Widget>[
            new Text(
              'Please Enter The Required Data',
              style: TextStyle(fontSize: 12.0),
            ),
            new BottomSheet(),
            new TextField(
              style: TextStyle(fontSize: 8.0, color: Colors.black),
              decoration: InputDecoration(labelText: 'Area'),
            ),
            new TextField(
              style: TextStyle(fontSize: 8.0, color: Colors.black),
              decoration: InputDecoration(labelText: 'The Requested Data'),
            ),
            new TextField(
              style: TextStyle(fontSize: 8.0, color: Colors.black),
              decoration: InputDecoration(labelText: 'Time'),
            ),
            new Padding(padding: EdgeInsets.only(top: 7)),
            new Text(
              'Hall Characteristics',
              style: TextStyle(fontSize: 12.0),
            ),
            new TextField(
              style: TextStyle(fontSize: 8.0, color: Colors.black),
              decoration: InputDecoration(labelText: 'Number Of Chairs'),
            ),
            new TextField(
              style: TextStyle(fontSize: 8.0, color: Colors.black),
              decoration: InputDecoration(labelText: 'The Space'),
            ),
            new Padding(padding: EdgeInsets.only(top: 7)),
            new Text(
              'Price',
              style: TextStyle(fontSize: 12.0),
              textAlign: TextAlign.left,
            ),
            new TextField(
              style: TextStyle(fontSize: 8.0, color: Colors.black),
              decoration: InputDecoration(labelText: 'Min'),
            ),
            new TextField(
              style: TextStyle(fontSize: 8.0, color: Colors.black),
              decoration: InputDecoration(labelText: 'Max'),
            ),
            new Padding(padding: EdgeInsets.all(4)),
            const SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                const SizedBox(width: 10.0),
                Expanded(
                  child: new FlatButton(
                      color: Colors.lightBlue,
                      textColor: Colors.white,
                      onPressed: () => debugPrint('Search'),
                      child: new Text('Search')),
                ),
                const SizedBox(width: 10.0),
                new FlatButton(
                  color: Colors.black26,
                  textColor: Colors.white,
                  onPressed: () => debugPrint('Clear'),
                  child: new Text('Clear'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BottomSheet extends StatefulWidget {
  const BottomSheet({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _BottomSheet();
}

class _BottomSheet extends State<BottomSheet> {
  static const meunItems = <String>[
    'Alexandria',
    'Aswan',
    'Asyut',
    'Arish',
    'Banha',
    'Beheira',
    'Beni Suef',
    'Cairo',
    'Dakahlia',
    'Damanhur',
    'Damietta',
    'El Tor',
    'Faiyum',
    'Gharbia',
    'Giza',
    'Hurghada',
    'Ismailia',
    'Kafr El Sheikh',
    'Kharga',
    'Luxor',
    'Mansoura',
    'Marsa Matruh',
    'Minya',
    'Monufia',
    'New Valley',
    'North Sinai',
    'Port Said',
    'Qalyubia',
    'Qena',
    'Red Sea',
    'Sharqia',
    'Shibin El Kom',
    'Sohag',
    'South Sinai',
    'Suez',
    'Tanta',
    'Zagazig',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text('Enter Choose Country'),
        )
      ],
    );
  }
}
