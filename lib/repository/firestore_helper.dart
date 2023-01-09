import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class FirestoreHelper {
  static Future<void> addDocument(
      String collection, Map<String, dynamic> data) async {
    await FirebaseFirestore.instance.collection(collection).add(data);
  }

  static Future<List<DocumentSnapshot>> getDocuments(String collection) async {
    QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection(collection).get();
    return snapshot.docs;
  }

  static Future<void> updateDocument(
      String collection, String documentId, Map<String, dynamic> data) async {
    await FirebaseFirestore.instance
        .collection(collection)
        .doc(documentId)
        .update(data);
  }

  static Future<void> deleteDocument(
      String collection, String documentId) async {
    await FirebaseFirestore.instance
        .collection(collection)
        .doc(documentId)
        .delete();
  }

  static Future<DocumentReference> getCurrentUserData(
      String collection, String uid) async {
    DocumentReference snapshot =
        await FirebaseFirestore.instance.collection(collection).doc(uid);
    return snapshot;
  }
}
