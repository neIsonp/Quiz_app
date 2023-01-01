import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserData {
  String? name;
  late String email;
  late int pontos;

  fetch() async {
    final firebaseUser = await FirebaseAuth.instance.currentUser;

    if (firebaseUser != null) {
      await FirebaseFirestore.instance
          .collection('utils')
          .doc(firebaseUser.uid)
          .get()
          .then((ds) {
        Map<String, dynamic> userdata = ds.data() as Map<String, dynamic>;

        name = userdata['name'];
        email = userdata['email'];
        pontos = userdata['pontos'];
      });
    }
  }
}
