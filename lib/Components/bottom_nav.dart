import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
      height: 50,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          icon: const Icon(
            Icons.home_rounded,
            color: Colors.white,
          ),
          splashColor: const Color.fromARGB(255, 228, 228, 228),
          splashRadius: 20,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search, color: Colors.white),
          splashColor: const Color.fromARGB(255, 228, 228, 228),
          splashRadius: 20,
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/courses');
          },
          icon: const Icon(Icons.menu_book_sharp, color: Colors.white),
          splashColor: const Color.fromARGB(255, 228, 228, 228),
          splashRadius: 20,
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/profile');
          },
          icon: const Icon(Icons.person, color: Colors.white),
          splashColor: const Color.fromARGB(255, 228, 228, 228),
          splashRadius: 20,
        ),
      ]),
    );
  }
}
