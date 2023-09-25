import 'package:flutter/material.dart';

class TopNav extends StatelessWidget {
  const TopNav({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
