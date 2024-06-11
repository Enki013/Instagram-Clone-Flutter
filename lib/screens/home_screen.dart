import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/post_widget.dart'; // New import
import 'package:instagram_clone/screens/profile_screen.dart';
import 'package:instagram_clone/screens/search_screen.dart'; // New import

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<String> _titles = <String>[
    'For You',
    'Search',
    'Add',
    'Likes',
    'Profile'
  ];

  static final List<Widget> _widgetOptions = <Widget>[
    const PostWidget(), // New widget added
    const SearchScreen(), // Arama ekranı
    const Center(child: Text('Add')),
    const Center(child: Text('Likes')),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 1
          ? null
          : AppBar(
              backgroundColor: Colors.white,
              title: Text(_titles[_selectedIndex],
                  style: const TextStyle(color: Colors.black)),
              actions: _selectedIndex == 4
                  ? [
                      IconButton(
                        icon: const Icon(Icons.add_box_outlined,
                            color: Colors.black),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.menu, color: Colors.black),
                        onPressed: () {},
                      ),
                    ]
                  : [
                      IconButton(
                        icon: const Icon(Icons.favorite_border,
                            color: Colors.black),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.chat_bubble_outline,
                            color: Colors.black),
                        onPressed: () {},
                      ),
                    ],
            ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Reels'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
