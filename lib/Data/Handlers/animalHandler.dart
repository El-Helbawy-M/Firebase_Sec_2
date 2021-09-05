import 'package:firebase_sec_2/Models/Animal.dart';

import 'handler.dart';

class AnimalHandler extends Handler {
  //==================== Variables
  Animal animal;

  //==================== Constructor
  AnimalHandler(Animal animal) : super("Animals", animal.name) {
    this.animal = animal;
  }

  //==================== Functions
  Future<bool> getAnimal() => getUser(this.animal.name);
  Future<void> deleteAnimal() => deleteUser(this.animal.name);
}
