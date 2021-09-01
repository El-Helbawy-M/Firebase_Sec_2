import 'package:firebase_sec_2/Data/Firebase/database.dart';
import 'package:firebase_sec_2/Models/Animal.dart';

class AnimalHandler extends DataBase {
  AnimalHandler(this.animal) : super("Animals");
  final Animal animal;
  Future<bool> addAnimal() => addUser(this.animal.name,
      {'Name': this.animal.name, 'Genere': this.animal.genere});
  Future<bool> getAnimal() => getUser(this.animal.name);
  Future<bool> updateAnimal() => updateUser(this.animal.name,
      {'Name': this.animal.name, 'Genere': this.animal.genere});
  Future<void> deleteAnimal() => deleteUser(this.animal.name);
}
