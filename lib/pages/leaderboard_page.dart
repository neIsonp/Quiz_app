import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_app_firebase/components/drawer_navigation.dart';

import '../models/user_model.dart';
import 'home_page.dart';

class LeaderBoardPage extends StatefulWidget {
  const LeaderBoardPage({super.key});

  @override
  State<LeaderBoardPage> createState() => _LeaderBoardPageState();
}

class _LeaderBoardPageState extends State<LeaderBoardPage> {
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'LeaderBoard',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.green,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: StreamBuilder<List<UserModel>>(
        stream: readUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('algo de errado: ${snapshot.hasError}');
          } else if (snapshot.hasData) {
            final users = snapshot.data;

            return ListView(
              children: users!.map(buildUser).toList(),
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }

  Widget buildUser(UserModel user) => ListTile(
        leading: CircleAvatar(
          child: Text('${user.score}'),
        ),
        title: Text(user.name),
        subtitle: Text(user.email),
      );
}
