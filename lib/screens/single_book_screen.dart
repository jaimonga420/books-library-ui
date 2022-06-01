import 'package:flutter/material.dart';

class SingleBookScreen extends StatefulWidget {
  const SingleBookScreen({Key? key}) : super(key: key);

  static const routeName = '/singlebookscreen';

  @override
  State<SingleBookScreen> createState() => _SingleBookScreenState();
}

class _SingleBookScreenState extends State<SingleBookScreen> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color(0xfff6a192),
            expandedHeight: MediaQuery.of(context).size.height * 0.5,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios)),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(0.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(25)),
                  margin: const EdgeInsets.only(bottom: 80, left: 25),
                  height: 240,
                  width: 190,
                  alignment: Alignment.topLeft,
                  child: Image.asset(args["image"]),
                )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    args["name"],
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    args["author"],
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    args["price"].toString(),
                    style: const TextStyle(
                        fontSize: 25,
                        color: Color(0xfff6a192),
                        fontWeight: FontWeight.bold),
                  ),
                  DefaultTabController(
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
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
                          insets: EdgeInsets.only(right: 15)),
                      tabs: [
                        Tab(
                          child: Container(
                            margin: const EdgeInsets.only(right: 23),
                            child: const Text('Description'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: const EdgeInsets.only(right: 23),
                            child: const Text('Reviews'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: const EdgeInsets.only(right: 23),
                            child: const Text('Similar'),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: Text(args["description"]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.resolveWith<
                                        OutlinedBorder>(
                                    (states) => RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                                minimumSize:
                                    MaterialStateProperty.resolveWith<Size>(
                                        (states) => const Size(250, 40)),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                        (states) => const Color(0xfff6a192))),
                            onPressed: () {},
                            child: const Text('Add To Library')),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]))
        ],
      )),
    );
  }
}
