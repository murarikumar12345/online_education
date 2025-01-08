import 'package:flutter/material.dart';
import 'package:onlineeducation_app/Screen/otpverification_screen2.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3300C6),
        automaticallyImplyLeading: false,
        title: Text(
          'Notification',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 80,
                top: 39,
              ),
              child: Container(
                width: double.infinity,
                height: 300,
                child: Image(
                  image: AssetImage('images/mobileimage.png'),
                  width: 371,
                  height: 400,
                ),
                // color: Colors.black,
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Text(
                    'OTP Verification',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'We will send  you an  one Time password on this number',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Enter Mobile  Number',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '+91-1234567890',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,

                    child: Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>NotificationScreenone())
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xff4747BF), Color(0xff508DE9)],
                          ),
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                          child: Text(
                        'GET OTP',
                        style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                      ),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
