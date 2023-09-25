import 'package:flutter/material.dart';
import 'package:sehpathi/Components/bottom_nav.dart';
import 'package:sehpathi/Components/chart_bar.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const ProfileView(),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Recent Events",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        Placeholder(
                          color: Colors.black,
                          fallbackHeight: 150,
                          fallbackWidth: 100,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Placeholder(
                          color: Colors.black,
                          fallbackHeight: 150,
                          fallbackWidth: 100,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Placeholder(
                          color: Colors.black,
                          fallbackHeight: 150,
                          fallbackWidth: 100,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Placeholder(
                          color: Colors.black,
                          fallbackHeight: 150,
                          fallbackWidth: 100,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Watch Hour",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 180,
                  width: double.infinity,
                  child: const Chart(),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Min Hour: 1",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                    Text(
                      "Max Hour: 5",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Daily Streak",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Text(
                      "Max: 50",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 150,
                  child: const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MonthChart(day: 31),
                        MonthChart(day: 28),
                        MonthChart(day: 31),
                        MonthChart(day: 30),
                        MonthChart(day: 31),
                        MonthChart(day: 30),
                        MonthChart(day: 31),
                        MonthChart(day: 31),
                        MonthChart(day: 30),
                        MonthChart(day: 31),
                        MonthChart(day: 30),
                        MonthChart(day: 31),
                      ],
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Achievements",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Text(
                      "3",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                )
              ],
            ),
          ),
        ]),
      )),
      bottomNavigationBar: BottomNav(),
    );
  }
}

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 5),
      padding: const EdgeInsets.all(5),
      child: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 5),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipOval(
                          child: Image.asset(
                        'assets/images/avatar.png',
                        scale: 4,
                      )),
                      const Text(
                        "Jeevan Joshi",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                      const Text(
                        "Khankar, Bageshwar, Uttarakhand",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                      const Text(
                        "+917668073035",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ]),
              )
            ],
          ),
          const Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Row(
              children: [
                Text("Daily Streak"),
                Icon(
                  Icons.local_fire_department_sharp,
                ),
                Text("50")
              ],
            ),
            Row(children: [
              Text("Coins"),
              Icon(Icons.attach_money_rounded),
              Text("10000")
            ])
          ]),
        ]),
      ]),
    );
  }
}

class MonthChart extends StatelessWidget {
  final int day;
  final String cl = "gray";
  const MonthChart({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 80,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(2),
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(2),
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(2),
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(2),
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                if (day != 28)
                  Container(
                    height: 10,
                    width: 10,
                    color: Colors.green,
                  ),
                SizedBox(
                  height: 5,
                ),
                if (day != 28)
                  Container(
                    height: 10,
                    width: 10,
                    color: Colors.green,
                  ),
                SizedBox(
                  height: 5,
                ),
                if (day == 31)
                  Container(
                    height: 10,
                    width: 10,
                    color: Colors.green,
                  ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// achievements --> leetcode streak block ---> watch hour ---> 