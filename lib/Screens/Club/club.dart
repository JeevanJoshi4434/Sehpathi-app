import 'package:flutter/material.dart';
import 'package:sehpathi/Components/bottom_nav.dart';

class Club extends StatefulWidget {
  const Club({super.key});

  @override
  State<Club> createState() => _ClubState();
}

class _ClubState extends State<Club> {
  @override
  Widget build(BuildContext context) {
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
                  "Sehpathi - Clubs",
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
      body: SafeArea(
          child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Cards(),
                        Cards(),
                      ]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Cards(),
                        Cards(),
                      ]),
                ],
              ))),
      bottomNavigationBar: BottomNav(),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.black),
      ),
    );
  }
}
