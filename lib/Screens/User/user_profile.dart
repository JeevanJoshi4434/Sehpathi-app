import 'package:flutter/material.dart';
import 'package:sehpathi/Components/bottom_nav.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 5, bottom: 5),
          padding: const EdgeInsets.all(10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const ProfileInfo(),
                Column(
                  children: [
                    Row(children: [
                      Icon(
                        Icons.watch_later_outlined,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Watch History",
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
                                          'assets/images/thumbnail.jpg'),
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
                                      image: AssetImage(
                                          'assets/images/thumbnail.jpg'),
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
                                      image: AssetImage(
                                          'assets/images/thumbnail.jpg'),
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
                                      image: AssetImage(
                                          'assets/images/thumbnail.jpg'),
                                      fit: BoxFit.cover)),
                              height: 100,
                              width: 150,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/store'),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          const Icon(
                            Icons.celebration_outlined,
                            size: 45,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Rewards",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Redeem your rewards!",
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          )
                        ]),
                      ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/club'),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          const Icon(
                            Icons.group_outlined,
                            size: 45,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Club",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Club activities & participation!",
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          )
                        ]),
                      ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        const Icon(
                          Icons.campaign_outlined,
                          size: 45,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Counselling",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Awareness & Education",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        )
                      ]),
                    ]),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/courses'),
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            const Icon(
                              Icons.play_arrow_outlined,
                              size: 45,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Your Courses",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Continue to watch your courses",
                                    style: TextStyle(fontSize: 10),
                                  )
                                ],
                              ),
                            )
                          ]),
                        ]),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          const Icon(
                            Icons.cast_for_education_outlined,
                            size: 40,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Events",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Complete Events and get more points",
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          )
                        ]),
                      ]),
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/courses'),
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            const Icon(
                              Icons.insert_drive_file_outlined,
                              size: 40,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Assignments",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Complete assignment and get more points",
                                    style: TextStyle(fontSize: 10),
                                  )
                                ],
                              ),
                            )
                          ]),
                        ]),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, '/login'),
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            const Icon(
                              Icons.logout,
                              size: 40,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Logout",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Logout your account",
                                    style: TextStyle(fontSize: 10),
                                  )
                                ],
                              ),
                            )
                          ]),
                        ]),
                  ),
                ),
              ]),
        ),
        bottomNavigationBar: const BottomNav(),
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, '/user/profile'),
      child: Container(
        margin: const EdgeInsets.only(top: 5, bottom: 5),
        padding: const EdgeInsets.all(5),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                ClipOval(
                    child: Image.asset(
                  'assets/images/avatar.png',
                  scale: 4,
                )),
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  child: const Column(children: [
                    Text(
                      "Jeevan Joshi",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black),
                    ),
                    Text(
                      "View profile",
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ]),
                )
              ],
            ),
            const Column(children: [
              Row(
                children: [
                  Icon(
                    Icons.local_fire_department_sharp,
                  ),
                  Text("50")
                ],
              ),
              Row(children: [Icon(Icons.attach_money_rounded), Text("10000")])
            ]),
          ]),
        ]),
      ),
    );
  }
}
