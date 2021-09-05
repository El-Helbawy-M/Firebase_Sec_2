import 'package:firebase_sec_2/Data/Firebase/database.dart';

import '../../constants.dart';

abstract class Handler extends DataBase {
  //info : this is a parent calss for any handler class you will create for any kind of users
  //so when you create any handler class you will make it extends form this class "Handler"

  //==================== Variables
  String name;

  //==================== Constructor
  Handler(String collection, this.name) : super(collection);

  //==================== Functions
  Future<bool> modify(Map<String, dynamic> data, Modify operation) async {
    switch (operation) {
      case Modify.Add:
        return await addUser(this.name, data);
        break;
      case Modify.Update:
        return await updateUser(name, data);
      default:
        return false;
    }
  }
}
