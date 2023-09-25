import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipOval(
                  child: Image.asset(
                'assets/images/logo.png',
                scale: 4,
              )),
              Text(
                "Sign Up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Aadhar Verification",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Enter your Aadhar Card number.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                  keyboardType: TextInputType.numberWithOptions(
                      decimal: false, signed: false),
                  style:
                      TextStyle(color: Color.fromARGB(255, 0, 0, 0), height: 1),
                  decoration: InputDecoration(
                      // hintText: 'username',
                      labelText: 'Aadhar No.',
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 2, 2, 2),
                          fontWeight: FontWeight.normal),
                      prefixIcon: Icon(Icons.lock_reset_sharp),
                      prefixIconColor: Color.fromARGB(153, 0, 0, 0),
                      focusedBorder: border,
                      enabledBorder: border)),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurple),
                      fixedSize:
                          MaterialStateProperty.all(const Size(200, 35))),
                  onPressed: () =>
                      {Navigator.pushNamed(context, '/verification')},
                  child: const Text(
                    "Continue",
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
