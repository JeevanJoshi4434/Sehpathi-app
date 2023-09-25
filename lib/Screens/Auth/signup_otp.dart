import 'package:flutter/material.dart';

class SignupOtp extends StatefulWidget {
  const SignupOtp({super.key});

  @override
  State<SignupOtp> createState() => _SignupOtpState();
}

class _SignupOtpState extends State<SignupOtp> {
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
              const Text(
                "Sign Up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Aadhar OTP Verification",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Enter OTP sent to the account associated with Aadhar Card",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                  keyboardType: TextInputType.numberWithOptions(
                      signed: false, decimal: false),
                  style:
                      TextStyle(color: Color.fromARGB(255, 0, 0, 0), height: 1),
                  decoration: InputDecoration(
                      // hintText: 'username',
                      labelText: 'Enter OTP',
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 2, 2, 2),
                          fontWeight: FontWeight.normal),
                      prefixIcon: Icon(Icons.pin),
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
                  onPressed: () => {Navigator.pushNamed(context, '/home')},
                  child: const Text(
                    "Verify",
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
