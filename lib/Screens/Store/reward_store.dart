import 'package:flutter/material.dart';
import 'package:sehpathi/Components/bottom_nav.dart';

class Reward extends StatefulWidget {
  const Reward({super.key});

  @override
  State<Reward> createState() => _RewardState();
}

class _RewardState extends State<Reward> {
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
                  "Sehpathi Redemption Store",
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
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Text(
                    "All Scholarships",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/scholarship1.jpg'),
                                  fit: BoxFit.cover)),
                          height: 150,
                          width: 100,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/scholarship2.jpg'),
                                  fit: BoxFit.cover)),
                          height: 150,
                          width: 100,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/scholarship3.jpg'),
                                  fit: BoxFit.cover)),
                          height: 150,
                          width: 100,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/scholarship2.jpg'),
                                  fit: BoxFit.cover)),
                          height: 150,
                          width: 100,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    )),
                Row(
                  children: [
                    Text(
                      "Available Scholarships",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/scholarship3.jpg'),
                                        fit: BoxFit.cover)),
                                height: 150,
                                width: 100,
                              ),
                              Row(children: [
                                Text("Price:"),
                                Icon(Icons.attach_money),
                                Text("10000"),
                              ])
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/scholarship1.jpg'),
                                        fit: BoxFit.cover)),
                                height: 150,
                                width: 100,
                              ),
                              Row(children: [
                                Text("Price:"),
                                Icon(Icons.attach_money),
                                Text("10000"),
                              ])
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/scholarship3.jpg'),
                                        fit: BoxFit.cover)),
                                height: 150,
                                width: 100,
                              ),
                              Row(children: [
                                Text("Price:"),
                                Icon(Icons.attach_money),
                                Text("10000"),
                              ])
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/scholarship1.jpg'),
                                        fit: BoxFit.cover)),
                                height: 150,
                                width: 100,
                              ),
                              Row(children: [
                                Text("Price:"),
                                Icon(Icons.attach_money),
                                Text("10000"),
                              ])
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/scholarship2.jpg'),
                                        fit: BoxFit.cover)),
                                height: 150,
                                width: 100,
                              ),
                              Row(children: [
                                Text("Price:"),
                                Icon(Icons.attach_money),
                                Text("10000"),
                              ])
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/scholarship1.jpg'),
                                        fit: BoxFit.cover)),
                                height: 150,
                                width: 100,
                              ),
                              Row(children: [
                                Text("Price:"),
                                Icon(Icons.attach_money),
                                Text("9000"),
                              ])
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
