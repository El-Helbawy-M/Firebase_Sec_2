import 'package:cloud_firestore/cloud_firestore.dart';

class DataBase {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String collection;
  DataBase(this.collection);
  Future<bool> addUser(String name, Map<String, dynamic> data) async {
    try {
      await this.firestore.collection(collection).doc(name).set(data);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> getUser(String name) async {
    try {
      DocumentSnapshot data =
          await this.firestore.collection(collection).doc(name).get();
      print(data.data());
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> updateUser(String name, Map<String, dynamic> data) async {
    try {
      await this.firestore.collection(collection).doc(name).update(data);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<void> deleteUser(String name) async {
    await this.firestore.collection(collection).doc(name).delete();
    print('ok');
  }
}
