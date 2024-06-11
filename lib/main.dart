import 'package:flutter/material.dart';

import 'screens/chat_screen.dart';
import 'screens/create_post_screen.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/create_post': (context) => CreatePostScreen(),
        '/chat': (context) => const ChatScreen(),
        '/search': (context) => const SearchScreen(),
      },
    );
  }
}
