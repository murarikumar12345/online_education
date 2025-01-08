import 'package:flutter/material.dart';
import 'package:onlineeducation_app/Screen/select_classes.dart';

class ClassesScreen extends StatefulWidget {
  const ClassesScreen({super.key});

  @override
  State<ClassesScreen> createState() => _ClassesScreenState();
}

class _ClassesScreenState extends State<ClassesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3300C6),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Image(
                  image: AssetImage('images/imageone.png'),
                  width: 300,
                  height: 160,
                ),
              ),
              Center(
                child: Text(
                  'Select the goal you want',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 8.5,
              ),
              Center(
                child: Text(
                  'Exam can be changed at any  time',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: 300,
                  height: 67,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom:50,left:20),
                    child: ListTile(
                      title: Text(
                        'NEET',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Class 11 | Class 12',style: TextStyle(color: Colors.black,fontSize: 12.5),),
                    ),
                  ),
                ),
              ), //Neet container//
              SizedBox(
                height: 15,
              ),
              Container(
                width: 300,
                height: 67,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom:50,left:20),
                  child: ListTile(
                    title: Text(
                      'MHT-CET',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Class 11 | Class 12',style: TextStyle(color: Colors.black,fontSize: 12.5),),
                  ),
              ), // MHT-CET//
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 300,
                height: 67,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom:50,left:20),
                  child: ListTile(
                    title: Text(
                      'IIT-JEE',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Class 11 | Class 12',style: TextStyle(color: Colors.black,fontSize: 12.5),),
                  ),
                ), // MHT-CET//
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>SelectClasses()),
                  );
                },
                child: Container(
                  width: 300,
                  height: 67,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom:50,left:20),
                    child: ListTile(
                      title: Text(
                        'School prepration',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Class 8 |Class 9 | Class 10',style: TextStyle(color: Colors.black,fontSize: 12.5),),
                    ),
                  ), // MHT-CET//
                ),
              ),
              // SizedBox(
              //   height: 15,
              // ),
              Stack(
                children: [
                  Image(image: AssetImage('images/robot.png'),
                  fit: BoxFit.cover,
                  ),
                ],
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}
