import 'package:flutter/material.dart';
import 'package:flutter_app/demo/state/state_management_demo.dart';

import 'demo/basic_demo.dart';
import 'demo/bloc/bloc_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/form_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/material_components.dart';
import 'demo/navigator_demo.dart';
import 'demo/rxdart/rxdart_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/stream/stream_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//      home: NavigatorDemo(),
      initialRoute: '/bloc',
      routes: {
        '/': (context) => NavigatorDemo(),
        '/about': (context) => Page("About"),
        '/home': (context) => Home(),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents(),
        '/state-manangement': (context) => StateManagementDemo(),
        '/stream': (context) => StreamDemo(),
        '/rxdart': (context) => RxDartDemo(),
        '/bloc': (context) => BlocDemo(),
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
        accentColor: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: Text("hello"),
              centerTitle: true,
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.search),
                    tooltip: "Search",
                    onPressed: null),
                IconButton(
                    icon: Icon(Icons.menu), tooltip: "more", onPressed: null),
              ],
              elevation: 0.0,
              bottom: TabBar(
                  unselectedLabelColor: Colors.black38,
                  indicatorColor: Colors.black54,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 1.0,
                  tabs: <Widget>[
                    Tab(
                      icon: Icon(Icons.local_florist),
                    ),
                    Tab(
                      icon: Icon(Icons.local_airport),
                    ),
                    Tab(
                      icon: Icon(Icons.local_atm),
                    ),
                    Tab(
                      icon: Icon(Icons.view_quilt),
                    ),
                  ]),
            ),
            body: TabBarView(children: <Widget>[
              ListViewDemo(),
              BasicDemo(),
              LayoutDemo(),
//              ViewDemo(),
              SliverDemo(),
            ]),
            drawer: DrawerDemo(),
            bottomNavigationBar: BottomNavigationBarDemo()));
  }
}
