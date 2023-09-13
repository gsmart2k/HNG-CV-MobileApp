import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

class CvEdit extends StatefulWidget {
  List<Map<String, dynamic>> details;

  CvEdit({super.key, required this.details});

  @override
  State<CvEdit> createState() => _CvEditState();
}

class _CvEditState extends State<CvEdit> {
  @override
  Widget build(BuildContext context) {
    final fullName = TextEditingController(text: widget.details[0]['fullname']);
    final bio = TextEditingController(text: widget.details[1]['bio']);
    final slackName =
        TextEditingController(text: widget.details[2]['slackname']);
    final role = TextEditingController(text: widget.details[4]['role']);
    final number = TextEditingController(text: widget.details[3]['number']);
    final username = TextEditingController(text: widget.details[5]['username']);

    List<Map<String, dynamic>> editedDetails = [
      {"icon": Icons.person, 'name': fullName.text},
      {"icon": Icons.person, 'name': bio.text},
      {"icon": Icons.person, 'name': slackName.text},
      {"icon": Icons.android, 'number': number.text},
      {"icon": Icons.roller_shades, 'role': role.text},
      {"icon": SimpleIcons.github, 'username': username.text},
    ];

    void dispose() {
      fullName.dispose();
      bio.dispose();
      slackName.dispose();
      role.dispose();
      number.dispose();
      username.dispose();
      super.dispose();
    }

    return Scaffold(
      appBar: AppBar(title: const Text("CV Editing Page")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Full Name'),
                controller: fullName,
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Bio'),
                controller: bio,
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Name'),
                controller: slackName,
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Role'),
                controller: role,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Number',
                ),
                controller: number,
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Username'),
                controller: username,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      editedDetails[0]['fullname'] = fullName.text;
                      editedDetails[1]['bio'] = bio.text;
                      editedDetails[2]['slackname'] = slackName.text;
                      editedDetails[3]['number'] = number.text;
                      editedDetails[4]['role'] = role.text;
                      editedDetails[5]['username'] = username.text;
                    });

                    Navigator.pop(context, editedDetails);
                    // print(editedDetails);
                  },
                  child: const Text('Make Changes'))
            ],
          ),
        ),
      ),
    );
  }
}
