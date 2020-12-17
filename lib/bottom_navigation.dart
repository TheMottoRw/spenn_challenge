import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spenn/screens/mymoney.dart';
import 'package:spenn/screens/transfer.dart';
import 'package:spenn/screens/cart.dart';

class BottomNavigation extends StatelessWidget{
  static const String _title = "Spenn";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyBottomNavigation(),
    );
  }
}
class MyBottomNavigation extends StatefulWidget{
  MyBottomNavigation({Key key}) : super(key: key);

  @override
  _MyBottomNavigation createState() => _MyBottomNavigation();
}
class _MyBottomNavigation extends State<MyBottomNavigation>{
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.lightGreen);
  static List<Widget> _widgetOptions = <Widget>[
    // Text('Transaction history', style: optionStyle,),
    DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: Colors.green,
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.group ),
                ),
                Tab(
                  icon: Icon(Icons.shopping_cart),
                ),
              ],
            ),
          ),
      ) ,
        body: TabBarView(
          children: <Widget>[
            Flexible(child: Me()),
            Flexible(child: Cart()),
          ],
        ),
      ),
    ),
    MyMoney(),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Spenn"),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.blueGrey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            title: Text("Transfer"),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            title: Text("My Money",),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[800],
        onTap: _onItemTapped,
      ),
    );
  }

}