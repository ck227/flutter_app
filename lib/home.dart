import 'package:flutter/material.dart';
import 'homeSuggest.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.darkRed,
      ),
      home: DefaultTabController(
        length: 7,
        child: Scaffold(
          appBar: AppBar(
            elevation: 1.0,
            backgroundColor: Colors.white,
            title: new Container(
              height: 32.0,
              margin: const EdgeInsets.only(left: 16.0, right: 16.0),
              padding: const EdgeInsets.only(left: 12.0, right: 16.0),
              width: double.infinity,
              decoration: new BoxDecoration(
                color: Colors.grey[200],
                borderRadius: new BorderRadius.all(new Radius.circular(8.0)),
              ),
              child: new Row(
                children: <Widget>[
                  new Icon(
                    Icons.search,
                    color: Colors.grey[600],
                  ),
                  new Text(
                    '搜索商品',
                    style: new TextStyle(color: Colors.grey[600], fontSize: 14.0),
                  )
                ],
              ),
            ),


            bottom: new PreferredSize(child: TabBar(
              isScrollable: true,
              labelColor: Colors.darkRed,
              indicatorColor: Colors.darkRed,
              unselectedLabelColor: Colors.black54,
              tabs: [
                new Container(
                  height: 26.0,
                  child: new Tab(text: '推荐'),
                  padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                ),
                new Container(
                  height: 26.0,
                  child: new Tab(text: '新品'),
                  padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                ),
                new Container(
                  height: 26.0,
                  child: new Tab(text: '福利社'),
                  padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                ),
                new Container(
                  height: 26.0,
                  padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                  child: new Tab(text: '限时购'),
                ),
                new Container(
                  height: 26.0,
                  child: new Tab(text: '居家'),
                  padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                ),
                new Container(
                  height: 26.0,
                  child: new Tab(text: '鞋包配饰'),
                  padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                ),
                new Container(
                  height: 26.0,
                  child: new Tab(text: '服装'),
                  padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                ),
              ],
            ), preferredSize: new Size(double.infinity, 26.0)),


          ),
          body: TabBarView(
            children: [
              new HomeSuggestScreen(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
