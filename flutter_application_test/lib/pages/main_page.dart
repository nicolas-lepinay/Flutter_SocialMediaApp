import 'package:flutter/material.dart';
import 'package:flutter_application_test/pages/home_page.dart';
import 'package:flutter_application_test/pages/profile_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: SvgPicture.asset('assets/svg/ic_home.svg'),
          ),
          BottomNavigationBarItem(
            label: 'Favourites',
            icon: SvgPicture.asset('assets/svg/ic_favorite.svg'),
          ),
          BottomNavigationBarItem(
            label: 'Add Post',
            icon: SvgPicture.asset('assets/svg/ic_messages.svg'),
          ),
          BottomNavigationBarItem(
            label: 'Messages',
            icon: SvgPicture.asset('assets/svg/ic_messages.svg'),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: SvgPicture.asset('assets/svg/ic_user.svg'),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.amber,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(child: Text('Favorites')),
    Center(child: Text('Add Post')),
    Center(child: Text('Messages')),
    ProfilePage(),
  ];
}
