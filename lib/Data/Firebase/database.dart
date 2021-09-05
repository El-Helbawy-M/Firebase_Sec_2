import 'package:cloud_firestore/cloud_firestore.dart';

class DataBase {
  //==================== Variables
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String collection;

  //==================== Constructor
  DataBase(this.collection);

  //==================== Functions

  //add info : for adding new document in the collection in firestore database
  //you can with thie function set the id or the name of the document and it's fields
  Future<bool> addUser(String name, Map<String, dynamic> data) async {
    try {
      await this.firestore.collection(collection).doc(name).set(data);
      return true;
    } catch (e) {
      return false;
    }
  }

  //get info : for requesting the data of the specifc document and it comes in "Map<String , dynamic>" form
  //here you just need to set the name or the id of the document to get it's data
  Future<bool> getUser(String name) async {
    try {
      DocumentSnapshot data = await this.firestore.collection(collection).doc(name).get();
      print(data.data());
      return true;
    } catch (e) {
      return false;
    }
  }

  //update info : for updating the data of the document
  Future<bool> updateUser(String name, Map<String, dynamic> data) async {
    try {
      await this.firestore.collection(collection).doc(name).update(data);
      return true;
    } catch (e) {
      return false;
    }
  }

  //delete info : for deleting the document from the collection
  Future<void> deleteUser(String name) async {
    await this.firestore.collection(collection).doc(name).delete();
    print('ok');
  }
}
