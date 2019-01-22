import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() {
  runApp(HomeSuggestScreen());
}

class HomeSuggestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.darkRed,
      ),
//      home: new MyHomePage(title: 'Flutter Demo Home Page'),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);

//  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new SizedBox(
            child: new Swiper(
              itemBuilder: (BuildContext context, int index) {
                return new Image.network(
                  "http://p8.maiyaole.com/fky/img/print/sy2/1546699856952.png",
                  fit: BoxFit.fill,
                );
              },
              itemCount: 3,
              autoplay: true,
              pagination: new SwiperPagination(
                  alignment: Alignment.bottomRight,
                  builder:
                      const DotSwiperPaginationBuilder(size: 6.0, activeSize: 6.0, space: 3.0)),
            ),
            height: 180.0,
            width: double.infinity,
          ),
          new Table(
              border: new TableBorder.all(width: 5.0, color: Colors.transparent),
              children: <TableRow>[
                new TableRow(
                  children: <Widget>[
                    //在一行中初始化一个单元格
                    new TableCell(child: _buildTableCell('特价闪购', 40.0)),
                    new TableCell(child: _buildTableCell('1起购', 40.0)),
                    new TableCell(child: _buildTableCell('返利商品', 40.0)),
                    new TableCell(child: _buildTableCell('常购清单', 40.0)),
                  ],
                ),
                new TableRow(children: <Widget>[
                  new TableCell(child: _buildTableCell('自营药品', 40.0)),
                  new TableCell(child: _buildTableCell('商家店铺', 40.0)),
                  new TableCell(child: _buildTableCell('1药贷', 40.0)),
                  new TableCell(child: _buildTableCell('领券中心', 40.0)),
                ]),
              ])
        ],
      ),
    );
  }
}

///构建一个单元格,下划线表示是私有方法
Widget _buildTableCell(String label, double height) {
  return new Container(
      //单元格内小部件对齐方式
      alignment: Alignment.center,
      //文本小部件
      child: new Column(
        children: <Widget>[
          new Container(
            child: new Image.network(
              "http://p8.maiyaole.com/fky/img/print/sy2/1546700751811.png",
              fit: BoxFit.fill,
              height: 40.0,
              width: 40.0,
            ),
            padding: const EdgeInsets.only(top: 12.0),
          ),
          new Container(
            child: new Text(
              label,
              textAlign: TextAlign.center,
            ),
            margin: const EdgeInsets.only(top: 4.0),
          ),
        ],
      )
//    height: height,
      );
}
