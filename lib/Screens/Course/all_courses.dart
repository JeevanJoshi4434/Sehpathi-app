import 'package:flutter/material.dart';
import 'package:sehpathi/Components/bottom_nav.dart';
import 'package:sehpathi/Components/video_player.dart';

class AllCourses extends StatefulWidget {
  const AllCourses({super.key});

  @override
  State<AllCourses> createState() => _AllCoursesState();
}

class _AllCoursesState extends State<AllCourses> {
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
                  "Watch Courses",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Icon(
                  Icons.watch_later_outlined,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "Recent Watch",
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
                                image:
                                    AssetImage('assets/images/thumbnail.jpg'),
                                fit: BoxFit.cover)),
                        height: 100,
                        width: 150,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/thumbnail.jpg'),
                                fit: BoxFit.cover)),
                        height: 100,
                        width: 150,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/thumbnail.jpg'),
                                fit: BoxFit.cover)),
                        height: 100,
                        width: 150,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/thumbnail.jpg'),
                                fit: BoxFit.cover)),
                        height: 100,
                        width: 150,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(Icons.play_arrow),
                  Text(
                    "Continue Watching",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/thumbnail.jpg'),
                          fit: BoxFit.cover)),
                  height: 200,
                  width: double.infinity,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(Icons.newspaper),
                  Text(
                    "Related Content",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
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
                                image:
                                    AssetImage('assets/images/thumbnail.jpg'),
                                fit: BoxFit.cover)),
                        height: 100,
                        width: 150,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/thumbnail.jpg'),
                                fit: BoxFit.cover)),
                        height: 100,
                        width: 150,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/thumbnail.jpg'),
                                fit: BoxFit.cover)),
                        height: 100,
                        width: 150,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/thumbnail.jpg'),
                                fit: BoxFit.cover)),
                        height: 100,
                        width: 150,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(Icons.insert_drive_file_outlined),
                  Text(
                    "Assignments",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      Container(
                        color: const Color.fromARGB(255, 74, 74, 74),
                        height: 150,
                        width: 100,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        color: const Color.fromARGB(255, 74, 74, 74),
                        height: 150,
                        width: 100,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        color: const Color.fromARGB(255, 74, 74, 74),
                        height: 150,
                        width: 100,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        color: const Color.fromARGB(255, 74, 74, 74),
                        height: 150,
                        width: 100,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(Icons.newspaper),
                  Text(
                    "My Courses",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/thumbnail.jpg'),
                                  fit: BoxFit.cover)),
                          height: 100,
                          width: 150,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/thumbnail.jpg'),
                                  fit: BoxFit.cover)),
                          height: 100,
                          width: 150,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/thumbnail.jpg'),
                                  fit: BoxFit.cover)),
                          height: 100,
                          width: 150,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/thumbnail.jpg'),
                                  fit: BoxFit.cover)),
                          height: 100,
                          width: 150,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/thumbnail.jpg'),
                                  fit: BoxFit.cover)),
                          height: 100,
                          width: 150,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/thumbnail.jpg'),
                                  fit: BoxFit.cover)),
                          height: 100,
                          width: 150,
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
      bottomNavigationBar: const BottomNav(),
    );
  }
}
