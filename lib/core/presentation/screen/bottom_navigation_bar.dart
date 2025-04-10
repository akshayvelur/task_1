import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_1/core/presentation/screen/campaings/campaigns_tab_bar.dart';



class BottomNavi extends StatefulWidget {
  @override
  _BottomNaviState createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text('Home')),
    Center(child: Compaigns()),
    Center(child: Text('post')),
        Center(child: Text('Notification')),   
         Center(child: Text('Profile',)),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.white,type: BottomNavigationBarType.fixed,selectedFontSize: 12,fixedColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: _onTap,
        items: [
          const BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/home.png")),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
        icon: ImageIcon(AssetImage("assets/megaphone.png")),
            label: 'Campaigns',
          ),
          const BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/plus.png")),
            label: 'post',
          ),
              const BottomNavigationBarItem(
     icon: ImageIcon(AssetImage("assets/notification.png")),
            label: 'Notification',
          ),  BottomNavigationBarItem(
  icon: ClipOval(
    child: Image.asset(
      "assets/profile.jpg",
      width: 28,     
      height: 28,     
      fit: BoxFit.cover,  
    ),
  ),
  label: 'Profile',
),  
        ],
      ),
    );
  }
}
