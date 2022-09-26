import 'package:flutter/material.dart';
import 'package:next_flutter/views/todo_slist_page.dart';
import 'package:next_flutter/views/user_detail_page.dart';

class MyTabNavigation extends StatefulWidget {
  const MyTabNavigation({Key? key}) : super(key: key);

  @override
  State<MyTabNavigation> createState() => _MyTabNavigationState();
}

class _MyTabNavigationState extends State<MyTabNavigation> {
  static const List<Widget> _widgetOptions = <Widget>[
    TodoList(),
    UserDetails()
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Person',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ));
  }
}