import 'package:flutter/material.dart';

class CategoryTabBar extends StatefulWidget {
  const CategoryTabBar({Key? key}) : super(key: key);

  @override
  State<CategoryTabBar> createState() => _CategoryTabBarState();
}

class _CategoryTabBarState extends State<CategoryTabBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      margin: const EdgeInsets.only(top: 30),
      child: DefaultTabController(
          length: 3,
          child: TabBar(
              labelPadding: const EdgeInsets.all(0),
              indicatorPadding: const EdgeInsets.all(0),
              isScrollable: true,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              labelStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                  // insets: EdgeInsets.fromLTRB(40, 0, 50, 0),
                  insets: EdgeInsets.only(right: 15)),
              tabs: [
                Tab(
                  child: Container(
                    margin: const EdgeInsets.only(right: 23),
                    child: const Text('New'),
                  ),
                ),
                Tab(
                  child: Container(
                    margin: const EdgeInsets.only(right: 23),
                    child: const Text('Trending'),
                  ),
                ),
                Tab(
                  child: Container(
                    margin: const EdgeInsets.only(right: 23),
                    child: const Text('Best Sellers'),
                  ),
                )
              ])),
    );
  }
}
