import 'package:flutter/material.dart';

import '../constants.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentdcolor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Thông tin người dùng",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: Text('Tài khoản và bảo mật'),
            onTap: () {
              // Navigate to Tài khoản và bảo mật screen
            },
          ),
          const Divider(),
          ListTile(
            title: Text('Đăng nhập'),
            onTap: () {
              // Navigate to Cài đặt screen
            },
          ),
          const Divider(),
          ListTile(
            title: Text('Tạo tài khoản'),
            onTap: () {
              // Navigate to Cài đặt screen
            },
          ),
          const Divider(),
          ListTile(
            title: Text('Cài đặt'),
            onTap: () {
              // Navigate to Cài đặt screen
            },
          ),
          const Divider(),
          ListTile(
            title: Text('Thông tin của bạn'),
            onTap: () {
              // Navigate to Thông tin của bạn screen
            },
          ),
          const Divider(),
          ListTile(
            title: Text('Điều khoản sử dụng'),
            onTap: () {
              // Navigate to Điều khoản sử dụng screen
            },
          ),
          const Divider(),
          ListTile(
            title: Text('Đăng xuất'),
            onTap: () {
              // Perform logout action
            },
          ),
        ],
      ),
    );
  }
}
