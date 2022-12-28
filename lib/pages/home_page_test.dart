import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_app_firebase/repository/get_user_name.dart';

class HomePageTest extends StatefulWidget {
  const HomePageTest({super.key});

  @override
  State<HomePageTest> createState() => _HomePageTestState();
}

class _HomePageTestState extends State<HomePageTest> {
  final user = FirebaseAuth.instance.currentUser;

  List<String> docIds = [];

  Future getDocId() async {
    await FirebaseFirestore.instance.collection('utils').get().then(
      (snapshot) {
        snapshot.docs.forEach(
          (document) {
            docIds.add(document.reference.id);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('signed in as ${user!.email}'),
            MaterialButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              color: Colors.deepPurple[200],
              child: const Text(
                'Sign out',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: FutureBuilder(
                future: getDocId(),
                builder: (context, snapshot) {
                  return ListView.builder(
                    itemCount: docIds.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: GetUserName(documentId: docIds[index]),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
