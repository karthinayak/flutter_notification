// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

//import 'customnav.dart';
//import 'package:screen/customnav.dart';

void main() {
  runApp(NotificationApp());
}

class NotificationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NotificationScreen(),
    );
  }
}

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool appNotificationEnabled = true;
  bool hydrationNotificationEnabled = true;
  bool nutritionReminderEnabled = false;
  bool tipsEnabled = true;

  // void _handleSelectionChanged(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.,
          children: [
            // Container(
            //   padding: EdgeInsets.all(20),
            //   alignment: Alignment.center,
            //   child:
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 50, 10, 0),
                  child: Icon(
                    Icons.notifications,
                    size: 50,
                  ),
                ),
                SizedBox(width: 10),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 50, 10, 0),
                  child: Text(
                    "Notifications",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 37,
                    ),
                  ),
                ),
              ],
            ),
            // ),

            Column(
              children: [
                Card(
                  margin: EdgeInsets.all(20),
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                      //side: BorderSide(color: Colors.blueAccent),
                      ),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 28, 158, 233),
                            blurRadius: 30.0),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("App Notifications"),
                            SizedBox(
                              child: Switch(
                                value: appNotificationEnabled,
                                onChanged: (newValue) {
                                  setState(() {
                                    appNotificationEnabled = newValue;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Hydration Reminders"),
                            Switch(
                              value: hydrationNotificationEnabled,
                              onChanged: (newValue) {
                                setState(() {
                                  hydrationNotificationEnabled = newValue;
                                });
                              },
                              activeColor: Colors.blue,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Nutrition Reminders"),
                            Switch(
                              value: nutritionReminderEnabled,
                              onChanged: (newValue) {
                                setState(() {
                                  nutritionReminderEnabled = newValue;
                                });
                              },
                              activeColor: Colors.blue,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Tips & Blogs"),
                            Switch(
                              value: tipsEnabled,
                              onChanged: (newValue) {
                                setState(() {
                                  tipsEnabled = newValue;
                                });
                              },
                              activeColor: Colors.blue,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(20),
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.blueAccent),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 28, 158, 233),
                            blurRadius: 30.0),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Messages",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assests/images/health-insurance_1.png',
                                fit: BoxFit.cover,
                                height: 35,
                                width: 35,
                              ),
                              Text(
                                  '6 steps to Success- how\n to start a healthy diet'),
                            ],
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: 2,
                            height: 20,
                            indent: 20,
                            endIndent: 0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assests/images/dinner_1.png',
                                fit: BoxFit.cover,
                              ),
                              Text('What did you had for your\n breakfast'),
                            ],
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: 2,
                            height: 20,
                            indent: 20,
                            endIndent: 0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assests/images/meditation_1.png',
                                fit: BoxFit.cover,
                              ),
                              Text(
                                  'Doing Meditation for 5 \n mins, producers a \n beautiful day.'),
                            ],
                          ),
                          SizedBox(height: 50),
                          ElevatedButton(
                            onPressed: () {
                              // Add your action here for the "Earlier Message" button
                            },
                            child: Text("Earlier Messages"),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 100, vertical: 10),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 120, 20, 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BottomNavigationBar(
                  backgroundColor: Color.fromARGB(255, 68, 161, 214),
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  selectedIconTheme: IconThemeData(
                    color: Color.fromARGB(255, 187, 242, 70),
                  ),
                  unselectedItemColor: Color.fromARGB(255, 243, 248, 255),
                  type: BottomNavigationBarType.fixed,
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: "",
                    ),
                    BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assests/images/Variant2.png'),
                        color: Colors.white,
                      ),
                      label: "",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.bubble_chart_outlined),
                      label: "",
                    ),
                    BottomNavigationBarItem(
                        icon: ImageIcon(
                          AssetImage('assests/images/heart.png'),
                          color: Colors.white,
                        ),
                        label: "",
                        backgroundColor: Colors.white),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        label: "",
                        backgroundColor: Colors.white),
                  ],
                ),
              ),
            ),

            // CustomBottomNavigationBar(
            //     selectedIndex: _selectedIndex,
            //     onIndexChanged: (index) => setState(() {
            //           _selectedIndex = index;
            //         })),
          ],
        ),
      ),
    );
  }
}
