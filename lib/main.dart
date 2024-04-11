import 'package:flutter/material.dart';
import 'package:profile_app1/components/profile_buttons.dart';
import 'package:profile_app1/components/profile_count_info.dart';
import 'package:profile_app1/components/profile_drawer.dart';
import 'package:profile_app1/components/profile_header.dart';
import 'package:profile_app1/components/profile_tab.dart';
import 'package:profile_app1/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ProfileDrawer(),
      body: Column(
        children: [
          ProfileHeader(),
          ProfileCountInfo(),
          ProfileButtons(),
          ProfileTab(),
        ],
      ),
    );
  }
}
