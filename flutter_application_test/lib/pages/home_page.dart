import 'package:flutter/material.dart';
import 'package:flutter_application_test/components/post_item.dart';
import 'package:flutter_application_test/components/toolbar.dart';
import 'package:flutter_application_test/styles/app_colors.dart';
import 'package:flutter_application_test/styles/app_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Social Media App',
        actions: [
          IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/svg/ic_location.svg')),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(user: 'Dove Cameron (#$index)');
        },
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 24);
        },
      ),
    );
  }
}
