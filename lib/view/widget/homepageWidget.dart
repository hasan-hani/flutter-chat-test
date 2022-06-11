import 'package:chatflutter/core/AppData.dart';
import 'package:flutter/material.dart' ;
import 'package:flutter_svg/svg.dart';

class HomePageWidget extends StatefulWidget {
  final List HomePageScreens ;
  HomePageWidget({required this.HomePageScreens});
  @override
  State<HomePageWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageWidget> {
  String title = 'Home';
  List titles = ['Home', 'Find a partner', 'Messages'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appBar(context),
        bottomNavigationBar: _bottomNavigationBar(),
        body: widget.HomePageScreens[indexHomePage],
      ),
    );
  }

  _appBar(context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(50),
      child: AppBar(
        title: Text(
          title,
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      ),
    );
  }

  _bottomNavigationBar() {
    return BottomNavigationBar(
      selectedLabelStyle: TextStyle(color: Theme.of(context).primaryColor),
      selectedIconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      currentIndex: indexHomePage,
      onTap: (value) {
        setState(() {
          indexHomePage = value;
          title = titles[indexHomePage];
        });
      },
      items: [
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'images/Svg/home.svg',
              color:
              indexHomePage == 0 ? Theme.of(context).primaryColor : Colors.black87,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: CircleAvatar(
                backgroundColor: indexHomePage == 1
                    ? Theme.of(context).primaryColor
                    : Colors.black87,
                child: SvgPicture.asset(
                  'images/Svg/search-1.svg',
                  color: Colors.white,
                )),
            label: ''),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'images/Svg/bxs-message-detail.svg',
              color:
              indexHomePage == 2 ? Theme.of(context).primaryColor : Colors.black87,
            ),
            label: 'Message'),
      ],
    );
  }
}