import 'package:flutter/material.dart';
import 'package:onlineeducation_app/Screen/otp_verification_screen.dart';
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              child: Image(
                image: AssetImage('images/tsk.png'),
                height: 180,
                width: 250,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: MediaQuery.of(context).size.height*0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(32)),
                color: Color(0xff3300C6),
              ),
              child: Column(
                children: [


                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 170,top: 50 ),
                        child: Text(
                          'Forgot \n password? ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(vertical: 15),
                      //   child: Text(
                      //     'Password  ',
                      //     style: TextStyle(
                      //         color: Colors.white,
                      //         fontSize: 24,
                      //         fontWeight: FontWeight.bold),
                      //   ),


                    ],
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: Container(
                      width: 350,
                      height: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your email address',
                          prefixIcon: Icon(
                            Icons.email,
                            size: 30,
                          ),
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.remove_red_eye),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Text(
                        'We will send you a message to  set or rest \n your new password',
                        style: TextStyle(color: Colors.white,fontSize: 15),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context)=>OtpVerificationScreen()),
                        );
                      },
                      child: Container(
                        width: 350,
                        height: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.cyanAccent,
                        ),
                        child: Center(
                          child: Text(
                            'Submit ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
                  ),
      ),
    );
  }
}
