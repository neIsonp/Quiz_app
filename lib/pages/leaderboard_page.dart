import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_app_firebase/components/drawer_navigation.dart';
import 'package:lottie/lottie.dart';

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              LottieBuilder.asset(
                'assets/lottie/trophy.json',
                width: 300,
                repeat: false,
              ),
              SingleChildScrollView(
                child: Container(
                  height: 500,
                  child: StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection('utils')
                        .orderBy('score', descending: true)
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return Container();
                      } else {
                        List<DocumentSnapshot> documents = snapshot.data!.docs;

                        return Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: ListView.builder(
                            itemCount: documents.length,
                            itemBuilder: (context, index) {
                              DocumentSnapshot document = documents[index];

                              return Column(
                                children: [
                                  const SizedBox(height: 10),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      gradient: document['email'] == user!.email
                                          ? const LinearGradient(
                                              colors: [
                                                Colors.blue,
                                                Colors.green
                                              ],
                                            )
                                          : null,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.05),
                                          spreadRadius: 10,
                                          blurRadius: 10,
                                        ),
                                      ],
                                    ),
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        child: Text('${(index + 1)}'),
                                      ),
                                      title: Text(
                                        document['name']
                                                .toString()
                                                .toUpperCase()[0] +
                                            document['name']
                                                .toString()
                                                .substring(1),
                                      ),
                                      subtitle:
                                          Text('Pontos: ${document['score']}'),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget buildUser(UserModel user) => ListTile(
        leading: CircleAvatar(
          child: Text('${user.score}'),
        ),
        title: Text(user.name),
        subtitle: Text(user.email),
      );
}
