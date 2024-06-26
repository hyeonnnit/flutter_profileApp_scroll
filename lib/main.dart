import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:profile_app1/components/profile_buttons.dart';
import 'package:profile_app1/components/profile_count_info.dart';
import 'package:profile_app1/components/profile_drawer.dart';
import 'package:profile_app1/components/profile_header.dart';
import 'package:profile_app1/theme.dart';

import 'components/profile_tab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: ProfileDrawer(),
        appBar: _buildProfileAppBar(),
        body: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate([
                  ProfileHeader(),
                  SizedBox(height: 20),
                  ProfileCountInfo(),
                  SizedBox(height: 20),
                  ProfileButtons(),
                ]),
              ),
            ];
          },
          body: ProfileTab(),
        ));
  }

  AppBar _buildProfileAppBar() {
    return AppBar(
      leading: Icon(Icons.arrow_back_ios),
      title: Text("Profile"),
      centerTitle: true,
    );
  }
}