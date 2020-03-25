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
  Widget appBerTitle = new Text("Search");
  Icon SearchBotton = new Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => debugPrint('back')),
        title: appBerTitle,
        actions: <Widget>[
          new IconButton(
              icon: SearchBotton,
              onPressed: () {
                setState(() {
                  if (this.SearchBotton.icon == Icons.search) {
                    this.SearchBotton = new Icon(Icons.close);

                    this.appBerTitle = new TextField(
                      style: new TextStyle(
                        color: Colors.white,
                      ),
                      decoration: new InputDecoration(
                        prefixIcon: new Icon(Icons.search, color: Colors.white),
                        hintText: "Search...",
                        hintStyle: new TextStyle(color: Colors.white),
                      ),
                    );
                  } else {
                    this.SearchBotton = new Icon(Icons.search);
                    this.appBerTitle = new Text("Search");
                  }
                });
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15.0),
          padding: EdgeInsets.all(12.0),
          child: new Column(
            children: <Widget>[
              new Text(
                'Please Enter The Required Data',
                style: TextStyle(fontSize: 12.0),
              ),
              Padding(
                child: DropdownButton(
                  // value :value ,
                  hint: Text('Enter Choose Country'),
                  isExpanded: true,
                  onChanged: (NewValue) {
                    //  print(value);
                    //this.value = NewValue;
                  },
                  items: <DropdownMenuItem>[
                    DropdownMenuItem(
                      child: Text('Alexandria'),
                    ),
                    DropdownMenuItem(
                      child: Text('Aswan'),
                    ),
                    DropdownMenuItem(
                      child: Text('Asyut'),
                    ),
                    DropdownMenuItem(
                      child: Text('Arish'),
                    ),
                    DropdownMenuItem(
                      child: Text('Banha'),
                    ),
                    DropdownMenuItem(
                      child: Text('Beheira'),
                    ),
                    DropdownMenuItem(
                      child: Text('Beni Suef'),
                    ),
                    DropdownMenuItem(
                      child: Text('Cairo'),
                    ),
                    DropdownMenuItem(
                      child: Text('Dakahlia'),
                    ),
                    DropdownMenuItem(
                      child: Text('Damanhur'),
                    ),
                    DropdownMenuItem(
                      child: Text('Damietta'),
                    ),
                    DropdownMenuItem(
                      child: Text('El Tor'),
                    ),
                    DropdownMenuItem(
                      child: Text('Faiyum'),
                    ),
                    DropdownMenuItem(
                      child: Text('Gharbia'),
                    ),
                    DropdownMenuItem(
                      child: Text('Giza'),
                    ),
                    DropdownMenuItem(
                      child: Text('Hurghada'),
                    ),
                    DropdownMenuItem(
                      child: Text('Ismailia'),
                    ),
                    DropdownMenuItem(
                      child: Text('Kafr El Sheikh'),
                    ),
                    DropdownMenuItem(
                      child: Text('Kharga'),
                    ),
                    DropdownMenuItem(
                      child: Text('Luxor'),
                    ),
                    DropdownMenuItem(
                      child: Text('Mansoura'),
                    ),
                    DropdownMenuItem(
                      child: Text('Marsa Matruh'),
                    ),
                    DropdownMenuItem(
                      child: Text('Minya'),
                    ),
                    DropdownMenuItem(
                      child: Text('Monufia'),
                    ),
                    DropdownMenuItem(
                      child: Text('New Valley'),
                    ),
                    DropdownMenuItem(
                      child: Text('North Sinai'),
                    ),
                    DropdownMenuItem(
                      child: Text('Port Said'),
                    ),
                    DropdownMenuItem(
                      child: Text('Qalyubia'),
                    ),
                    DropdownMenuItem(
                      child: Text('Qena'),
                    ),
                    DropdownMenuItem(
                      child: Text('Red Sea'),
                    ),
                    DropdownMenuItem(
                      child: Text('Sharqia'),
                    ),
                    DropdownMenuItem(
                      child: Text('Shibin El Kom'),
                    ),
                    DropdownMenuItem(
                      child: Text('Sohag'),
                    ),
                    DropdownMenuItem(
                      child: Text('South Sinai'),
                    ),
                    DropdownMenuItem(
                      child: Text('Suez'),
                    ),
                    DropdownMenuItem(
                      child: Text('Tanta'),
                    ),
                    DropdownMenuItem(
                      child: Text('Zagazig'),
                    ),
                  ],
                ),
              ),
              new TextField(
                style: TextStyle(fontSize: 10.0, color: Colors.black),
                decoration: InputDecoration(labelText: 'Area'),
              ),
              new TextField(
                style: TextStyle(fontSize: 10.0, color: Colors.black),
                decoration: InputDecoration(labelText: 'The Requested Data'),
              ),
              new TextField(
                style: TextStyle(fontSize: 10.0, color: Colors.black),
                decoration: InputDecoration(labelText: 'Time'),
              ),
              new Padding(padding: EdgeInsets.only(top: 7)),
              new Text(
                'Hall Characteristics',
                style: TextStyle(fontSize: 12.0),
              ),
              new TextField(
                style: TextStyle(fontSize: 10.0, color: Colors.black),
                decoration: InputDecoration(labelText: 'Number Of Chairs'),
              ),
              new TextField(
                style: TextStyle(fontSize: 10.0, color: Colors.black),
                decoration: InputDecoration(labelText: 'The Space'),
              ),
              new Padding(padding: EdgeInsets.only(top: 7)),
              new Text(
                'Price',
                style: TextStyle(fontSize: 12.0),
                textAlign: TextAlign.left,
              ),
              new TextField(
                style: TextStyle(fontSize: 10.0, color: Colors.black),
                decoration: InputDecoration(labelText: 'Min'),
              ),
              new TextField(
                style: TextStyle(fontSize: 10.0, color: Colors.black),
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
      ),
    );
  }
}
