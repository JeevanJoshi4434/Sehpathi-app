import 'package:flutter/material.dart';
import 'package:sehpathi/Components/bottom_nav.dart';
import 'package:sehpathi/Components/tranding_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double price = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
        borderSide: BorderSide(
            //Color(0xAARRGGBB)
            color: Color.fromARGB(255, 255, 255, 255),
            width: 2,
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignOutside),
        borderRadius: BorderRadius.all(Radius.circular(10)));
    return Scaffold(
      appBar: AppBar(
        leadingWidth: double.infinity,
        toolbarHeight: 80,
        surfaceTintColor: Colors.white,
        shadowColor: Color.fromARGB(255, 229, 229, 227),
        leading: Container(
          height: 80,
          width: double.infinity,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sehpathi",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Column(children: [
                      Row(
                        children: [
                          Icon(
                            Icons.local_fire_department_sharp,
                          ),
                          Text("50")
                        ],
                      ),
                      Row(children: [
                        Icon(Icons.attach_money_rounded),
                        Text("10000")
                      ])
                    ]),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.only(left: 5, right: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/thumbnail.jpg'),
                          fit: BoxFit.cover)),
                  height: 300,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "My Courses",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TrandingItems(image: "assets/images/thumbnail.jpg"),
                      TrandingItems(image: "assets/images/thumbnail.jpg"),
                      TrandingItems(image: "assets/images/thumbnail.jpg"),
                      TrandingItems(image: "assets/images/thumbnail.jpg"),
                      TrandingItems(image: "assets/images/thumbnail.jpg"),
                      TrandingItems(image: "assets/images/thumbnail.jpg"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Tranding Courses",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TrandingItems(image: "assets/images/scholarship1.jpg"),
                      TrandingItems(image: "assets/images/scholarship2.jpg"),
                      TrandingItems(image: "assets/images/scholarship3.jpg"),
                      TrandingItems(image: "assets/images/scholarship2.jpg"),
                      TrandingItems(image: "assets/images/scholarship1.jpg"),
                      TrandingItems(image: "assets/images/scholarship3.jpg"),
                    ],
                  ),
                ),
                Text(
                  "Job opportunities",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TrandingItems(image: "assets/images/thumbnail.jpg"),
                      TrandingItems(image: "assets/images/thumbnail.jpg"),
                      TrandingItems(image: "assets/images/thumbnail.jpg"),
                      TrandingItems(image: "assets/images/thumbnail.jpg"),
                      TrandingItems(image: "assets/images/thumbnail.jpg"),
                      TrandingItems(image: "assets/images/thumbnail.jpg"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/thumbnail.jpg'),
                          fit: BoxFit.cover)),
                  height: 200,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Loans & Grants",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TrandingItems(image: "assets/images/scholarship1.jpg"),
                      TrandingItems(image: "assets/images/scholarship2.jpg"),
                      TrandingItems(image: "assets/images/scholarship3.jpg"),
                      TrandingItems(image: "assets/images/scholarship2.jpg"),
                      TrandingItems(image: "assets/images/scholarship1.jpg"),
                      TrandingItems(image: "assets/images/scholarship3.jpg"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          )),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
