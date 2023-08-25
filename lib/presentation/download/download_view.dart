import 'package:flutter/material.dart';
import 'package:flutterflix/presentation/presentation.dart';

import '../shared_widgets/bottom_navigation_bar.dart';

class DownloadView extends StatefulWidget {
  const DownloadView({super.key});

  @override
  State<DownloadView> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: getAppBar(),
      ),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      title: const Text("My Downloads"),
      actions: [
        IconButton(
          icon: Image.asset(
            AssetManager.userAvatar,
            fit: BoxFit.cover,
            width: 26,
            height: 26,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget getBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.withOpacity(0.2),
          ),
          child: Center(
            child: Icon(
              Icons.file_download,
              size: 80,
              color: Colors.grey.withOpacity(0.3),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 40, right: 40),
          child: Text(
            "Download shows and movies so you'll never be without something to watch even when you're offline",
            style: TextStyle(
              height: 1.5,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const BottomNavBar(),
                ),
              );
            },
            child: Container(
              height: 50,
              decoration: const BoxDecoration(color: Colors.white),
              child: const Center(
                child: Text(
                  "See What You Can Download",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
