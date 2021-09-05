import 'package:firebase_sec_2/Data/Handlers/handler.dart';
import 'package:firebase_sec_2/Models/AppUser.dart';

class AppUserHandler extends Handler {
  //==================== Variables
  AppUser user;

  //==================== Constructor
  AppUserHandler(AppUser user) : super("Users", user.name) {
    this.user = user;
  }

  //==================== Functions
  Future<bool> getAppUser() => getUser(this.user.name);
  Future<void> deleteAppUser() => deleteUser(this.user.name);
}
