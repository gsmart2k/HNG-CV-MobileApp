import 'package:cv_app/screens/EditCV.dart';
import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

class CvApp extends StatefulWidget {
  CvApp({super.key});

  @override
  State<CvApp> createState() => _CvAppState();
}

class _CvAppState extends State<CvApp> {
  List<Map<String, dynamic>> userDetails = [
    {"icon": Icons.person, 'fullname': 'Ogunrinade Gbolahan'},
    {
      "icon": Icons.person,
      'bio':
          'A mobile and Web developer. Has experience working with flutter, React Js, Next Js. Studied Mining Engineering.'
    },
    {"icon": Icons.person, 'slackname': 'Gbolahan'},
    {"icon": Icons.android, 'number': '09064711987'},
    {"icon": Icons.roller_shades, 'role': 'HNG Mobile Dev Intern '},
    {"icon": SimpleIcons.github, 'username': 'gsmart2k'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () async {
                final editedDetails = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CvEdit(details: userDetails)));
                setState(() {
                  userDetails = editedDetails;
                });
              },
              child: const Text(
                'Edit CV',
                style: TextStyle(fontWeight: FontWeight.bold),
              ))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(
                  'res/images/gbolahan.jpg',
                ),
                foregroundImage: AssetImage(
                  'res/images/gbolahan.jpg',
                ),
                radius: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                userDetails[0]['fullname'],
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                userDetails[1]['bio'],
                style: const TextStyle(color: Color.fromARGB(255, 107, 95, 95)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              const Icon(SimpleIcons.slack, size: 15),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(userDetails[2]['slackname']),
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.phone_android, size: 15),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(userDetails[3]['number']),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.roller_shades, size: 15),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(userDetails[4]['role']),
                            ],
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Row(
                            children: [
                              const Icon(SimpleIcons.github, size: 15),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(userDetails[5]['username']),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(thickness: 1, color: Colors.black),
                      const Text(
                        'Recent Projects',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        // decoration: BoxDecoration(color: Colors.amberAccent),
                        width: double.infinity,
                        height: 200,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 150,
                                width: 200,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    const Text(
                                      'Flutter Chat App',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Positioned(
                                        top: 120,
                                        bottom: 0,
                                        child: Container(
                                            alignment: Alignment.centerRight,
                                            width: 200,
                                            decoration: const BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 165, 165, 165)),
                                            child: const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              child: Icon(
                                                  Icons.arrow_right_alt_sharp),
                                            )))
                                  ],
                                ),
                              ),
                              Container(
                                height: 150,
                                width: 200,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    const Text(
                                      'Flutter Chat App',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Positioned(
                                        top: 120,
                                        bottom: 0,
                                        child: Container(
                                            alignment: Alignment.centerRight,
                                            width: 200,
                                            decoration: const BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 165, 165, 165)),
                                            child: const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              child: Icon(
                                                  Icons.arrow_right_alt_sharp),
                                            )))
                                  ],
                                ),
                              ),
                              Container(
                                height: 150,
                                width: 200,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    const Text(
                                      'Flutter Chat App',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Positioned(
                                        top: 120,
                                        bottom: 0,
                                        child: Container(
                                            alignment: Alignment.centerRight,
                                            width: 200,
                                            decoration: const BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 165, 165, 165)),
                                            child: const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              child: Icon(
                                                  Icons.arrow_right_alt_sharp),
                                            )))
                                  ],
                                ),
                              ),
                              Container(
                                height: 150,
                                width: 200,
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    const Text(
                                      'Flutter Chat App',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Positioned(
                                        top: 120,
                                        bottom: 0,
                                        child: Container(
                                            alignment: Alignment.centerRight,
                                            width: 200,
                                            decoration: const BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 165, 165, 165)),
                                            child: const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              child: Icon(
                                                  Icons.arrow_right_alt_sharp),
                                            )))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
