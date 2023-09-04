import 'package:flutter/material.dart';
import 'package:flutter_application_test/styles/app_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/temp/user1.png', width: 90, height: 90),
          SizedBox(height: 24),
          Text("Dove Cameron", style: AppText.header2),
          SizedBox(height: 12),
          Text("France", style: AppText.subtitle3),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('523', style: AppText.header2),
                  Text('followers'),
                ],
              ),
              Column(
                children: [
                  Text('874', style: AppText.header2),
                  Text('posts'),
                ],
              ),
              Column(
                children: [
                  Text('195', style: AppText.header2),
                  Text('following'),
                ],
              ),
            ],
          ),
          Divider(thickness: 1, height: 40),
          Text('Rest'),
        ],
      ),
    );
  }
}
