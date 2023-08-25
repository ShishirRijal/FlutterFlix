import 'package:flutter/material.dart';
import 'package:flutterflix/presentation/presentation.dart';
import 'package:flutterflix/presentation/shared_widgets/shared_widgets.dart';

List bottomNavItems = [
  {"icon": Icons.home, "text": "Home"},
  {"icon": Icons.play_circle_outline, "text": "Coming Soon"},
  {"icon": Icons.search, "text": "Search"},
  {"icon": Icons.file_download, "text": "Downloads"},
];

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: const [
        HomeView(),
        ComingSoonView(),
        SearchView(),
        Scaffold(
            backgroundColor: ColorManager.black,
            body: Center(child: HeaderText("Downloads"))),
      ],
    );
  }

  Widget getFooter() {
    return Container(
      alignment: Alignment.center,
      height: 90,
      decoration: const BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(bottomNavItems.length, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  activeTab = index;
                });
              },
              child: Column(
                children: [
                  Icon(
                    bottomNavItems[index]['icon'],
                    size: 30,
                    color: activeTab == index
                        ? Colors.white
                        : Colors.white.withOpacity(0.5),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    bottomNavItems[index]['text'],
                    style: TextStyle(
                      fontSize: 12,
                      color: activeTab == index
                          ? Colors.white
                          : Colors.white.withOpacity(0.5),
                    ),
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
