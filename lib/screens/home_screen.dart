import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/category_tab_bar.dart';
import '../widgets/category_books.dart';
import '../widgets/popular_items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hi, jaimonga420',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Discover Latest Books',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            Container(
              margin: const EdgeInsets.only(top: 18, right: 25),
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  TextFormField(
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w600),
                    decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 19, right: 50, bottom: 8),
                        border: InputBorder.none,
                        hintText: 'Search Book'),
                  ),
                  Positioned(
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: const Color(0xfff6a192),
                            borderRadius: BorderRadius.circular(10)),
                      )),
                  Positioned(
                      right: -5,
                      bottom: -5,
                      child: IconButton(
                          iconSize: 30,
                          color: Colors.white70,
                          onPressed: () {},
                          icon: const Icon(Icons.search)))
                ],
              ),
            ),
            const CategoryTabBar(),
            const CategoryBooks(),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Popular Items',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 25,
            ),
            const PopularItems()
          ],
        ),
      )),
    );
  }
}
