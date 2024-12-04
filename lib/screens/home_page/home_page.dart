import 'package:flutter/material.dart';
import 'package:ngpiteapp/app/config/color_manager.dart';
import 'package:ngpiteapp/screens/home_page/widgets/recommended_list.dart';
import 'package:ngpiteapp/screens/home_page/widgets/sliver_app_bar_home.dart';
import 'package:ngpiteapp/screens/home_page/widgets/some_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorManager.whiteColor,
        child: CustomScrollView(
          slivers: [
            SliverAppBarHome(),
            RecommendedList(),
            SomeItem(),
          ],
        ),
      ),
    );
  }
}
