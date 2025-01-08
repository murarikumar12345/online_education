import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:onlineeducation_app/Screen/start_screen.dart';

class NotificationScreenone extends StatefulWidget {
  const NotificationScreenone({super.key});

  @override
  State<NotificationScreenone> createState() => _NotificationScreenoneState();
}

class _NotificationScreenoneState extends State<NotificationScreenone> {
  bool _onEditing=true;
  String? _code;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Verification',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff3300C6),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            // color: Colors.blue,
            height: 300,
            child: Image(
              image: AssetImage('images/iconmessage.png'),
            ),
          ),
          Expanded(
              child: Column(
            children: [
              Text(
                'OTP Verification',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Enter the OTP sent to',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
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
              SizedBox(height: 15,),
              VerificationCode(
                textStyle: TextStyle(fontSize: 20.0, color: Colors.red[900]),
                keyboardType: TextInputType.number,
                underlineColor: Colors.amber, // If this is null it will use primaryColor: Colors.red from Theme
                length: 4,
                cursorColor: Colors.blue, // If this is null it will default to the ambient
                // clearAll is NOT required, you can delete it
                // takes any widget, so you can implement your design
                clearAll: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'clear all',
                    style: TextStyle(fontSize: 14.0, decoration: TextDecoration.underline, color: Colors.blue[700]),
                  ),
                ),
                onCompleted: (String value) {
                  setState(() {
                    _code = value;
                  });
                },
                onEditing: (bool value) {
                  setState(() {
                    _onEditing = value;
                  });
                  if (!_onEditing) FocusScope.of(context).unfocus();
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Didnt receive  the otp?',
                      style: TextStyle(
                          color: Color(0xff565151),
                          fontSize: 15,
                          ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Center(
                    child: Text(
                      'RESEND OTP',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>StartScreen()),
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
                    'VERIFY',
                    style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                  ),),
              ),
            ),
            ],
          ),
          ),
        ],
      ),
    );
  }
}
