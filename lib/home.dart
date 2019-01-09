import 'package:flutter/material.dart';

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
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 1.0,
            backgroundColor: Colors.white,
            bottom: TabBar(
              isScrollable: true,
              labelColor: Colors.darkRed,
              indicatorColor: Colors.darkRed,
              unselectedLabelColor: Colors.grey,
//              unselectedLabelStyle: new TextStyle(
//                color: Colors.grey
//              ),
              tabs: [
                Tab(
                  text: '推荐',
                ),
                Tab(
                  text: '新品',
                ),
                Tab(
                  text: '福利社',
                ),
                Tab(
                  text: '限时购',
                ),
                Tab(
                  text: '居家',
                ),
                Tab(
                  text: '鞋包配饰',
                ),
                Tab(
                  text: '服装',
                ),
              ],
            ),
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
          ),
          body: TabBarView(
            children: [
              Icon(
                Icons.directions_car,
              ),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
