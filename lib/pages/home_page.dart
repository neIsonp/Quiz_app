import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:login_app_firebase/components/drawer_navigation.dart';

import 'package:login_app_firebase/utils/app_routes.dart';

import '../models/user_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigation(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 350,
            child: Stack(
              children: [appBarCurve(), AppBarBalance()],
            ),
          ),
          getNavigation(),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 35),
            child: Column(
              children: const [
                Text(
                  'Outros jogadores',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget appBarCurve() {
    var size = MediaQuery.of(context).size;

    return ClipPath(
      clipper: OvalBottomBorderClipper(),
      child: Container(
        width: size.width,
        height: size.height * 0.25,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.green],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
          child: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Builder(
                  builder: (context) => InkWell(
                    onTap: () => Scaffold.of(context).openDrawer(),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        'assets/images/menu.png',
                        color: Colors.white,
                        width: 30,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Eprosec',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget AppBarBalance() {
    var size = MediaQuery.of(context).size;

    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('utils')
          .doc(user!.email)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: size.width,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      spreadRadius: 10,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Row(
                                children: [
                                  Container(
                                    width: 10,
                                    height: 10,
                                    decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nome',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      const SizedBox(height: 3),
                                      Text(
                                        snapshot.data!['name'],
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Flexible(
                              child: Row(
                                children: [
                                  Container(
                                    width: 10,
                                    height: 10,
                                    decoration: const BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pontos',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                      const SizedBox(height: 3),
                                      Text(
                                        snapshot.data!['pontos'].toString(),
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 17),
                        const Divider(),
                        const SizedBox(height: 10),
                        Text(
                          'Tens cerca de ${snapshot.data!['pontos']} pontos, caso queiras saber como ganhar mais, clique no botão abaixo.',
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(AppRoutes.goalsPage);
                          },
                          child: const Text('Ver mais'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );

    //
  }

  Widget getNavigation() {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Navegação',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 35),
          Wrap(
            spacing: 25,
            children: [
              itemNavigation(
                size: size,
                namePage: 'Quiz',
                icon: Icons.quiz_outlined,
                routeName: AppRoutes.quizPage,
              ),
              itemNavigation(
                size: size,
                namePage: 'Goals',
                icon: Icons.flag,
                routeName: AppRoutes.goalsPage,
              ),
              itemNavigation(
                size: size,
                namePage: 'LeaderBoard',
                icon: Icons.leaderboard,
                routeName: AppRoutes.leaderBoardPage,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget itemNavigation({
    dynamic size,
    required IconData icon,
    required String namePage,
    required String routeName,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () => Navigator.of(context).pushNamed(routeName),
      child: Container(
        width: (size.width / 3) - 30,
        height: (size.width / 3) - 30,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.015),
              spreadRadius: 10,
              blurRadius: 10,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  colors: [Colors.blue, Colors.green],
                ),
              ),
              child: Center(
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              namePage,
              style: TextStyle(
                fontSize: 13,
                color: Colors.black.withOpacity(0.5),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildUser(UserModel user) => ListTile(
        leading: CircleAvatar(
          child: Text('${user.pontos}'),
        ),
        title: Text(user.name),
        subtitle: Text(user.email),
      );
}

Stream<List<UserModel>> readUsers() =>
    FirebaseFirestore.instance.collection('utils').snapshots().map((snapshot) =>
        snapshot.docs.map((docs) => UserModel.fromJson(docs.data())).toList());
