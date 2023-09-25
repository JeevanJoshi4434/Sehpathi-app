import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
        borderSide: BorderSide(
            //Color(0xAARRGGBB)
            color: Color.fromARGB(255, 79, 79, 79),
            width: 1,
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignOutside),
        borderRadius: BorderRadius.all(Radius.circular(20)));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipOval(
                      child: Image.asset(
                    'assets/images/logo.png',
                    scale: 4,
                  )),
                  const Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                    child: TextField(
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0), height: 1),
                        decoration: InputDecoration(
                            // hintText: 'username',
                            labelText: 'username',
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 2, 2, 2),
                                fontWeight: FontWeight.normal),
                            prefixIcon: Icon(Icons.person),
                            prefixIconColor: Color.fromARGB(153, 0, 0, 0),
                            focusedBorder: border,
                            enabledBorder: border)),
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                    child: TextField(
                      obscureText: true,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), height: 1),
                      decoration: const InputDecoration(

                          // hintText: 'username',
                          labelText: 'Password',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 2, 2, 2),
                              fontWeight: FontWeight.normal),
                          prefixIcon: Icon(Icons.lock),
                          prefixIconColor: Color.fromARGB(153, 0, 0, 0),
                          focusedBorder: border,
                          enabledBorder: border),
                      onChanged: (value) => print(value),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (value) => {},
                              ),
                              const Text("Remember me.")
                            ],
                          ),
                          const Row(children: [
                            Text("Forget Password ?"),
                          ])
                        ]),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.deepPurple),
                              fixedSize: MaterialStateProperty.all(
                                  const Size(200, 35))),
                          onPressed: () =>
                              {Navigator.pushNamed(context, '/home')},
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255)),
                          )),
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.deepPurple),
                              fixedSize: MaterialStateProperty.all(
                                  const Size(200, 35))),
                          onPressed: () =>
                              {Navigator.pushNamed(context, '/signup')},
                          child: const Text(
                            "Signup",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255)),
                          )),
                      const Text(
                        "or",
                        style: TextStyle(fontSize: 16),
                      ),
                      Container(
                        width: 270,
                        height: 50, // Set the desired width
                        padding: const EdgeInsets.all(10), // Optional padding
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 1), // Specify border color and width
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Continue with"),
                            Image.asset(
                              "assets/images/digiLocker.png",
                              scale: 9,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
