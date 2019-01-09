import 'package:flutter/material.dart';

void main() => runApp(new StoreScreen());

class StoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              indicatorColor: Colors.darkRed,
              tabs: [
                Tab(icon: Icon(Icons.directions_car,color: Colors.darkRed,)),
                Tab(icon: Icon(Icons.directions_transit,color: Colors.darkRed,)),
                Tab(icon: Icon(Icons.directions_bike,color: Colors.darkRed,)),
              ],
            ),
            title: new Container(
              height: 32.0,
              margin: const EdgeInsets.only(left: 16.0, right: 16.0),
              padding: const EdgeInsets.only(left: 12.0, right: 16.0),
              width: double.infinity,
              decoration: new BoxDecoration(
                color: Colors.grey[300],
                borderRadius: new BorderRadius.all(new Radius.circular(8.0)),
              ),
              child: new Row(
                children: <Widget>[
                  new Icon(
                    Icons.search,
                    color: Colors.grey[700],
                  ),
                  new Text(
                    '搜索商品',
                    style: new TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14.0
                    ),
                  )
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car,color: Colors.darkRed,),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
