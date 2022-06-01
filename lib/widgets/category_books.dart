import 'dart:convert';
import 'package:flutter/material.dart';

class CategoryBooks extends StatefulWidget {
  const CategoryBooks({Key? key}) : super(key: key);

  @override
  State<CategoryBooks> createState() => _CategoryBooksState();
}

class _CategoryBooksState extends State<CategoryBooks> {
  var _booksList = [];

  void _initData() async {
    await DefaultAssetBundle.of(context)
        .loadString('json/books.json')
        .then((value) {
      setState(() {
        _booksList = json.decode(value);
      });
    });
  }

  @override
  void initState() {
    _initData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      margin: const EdgeInsets.only(top: 20),
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: _booksList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(right: 20),
              height: 210,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(_booksList[index]["image"]))),
            );
          }),
    );
  }
}
