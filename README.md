# **Firebase_sec_2**
### 1.Getting start with the features of Firebase
Firebase introduce many features like :
* Authentication
* Database {`Firestore Database` , `Realtime Database`}
* Storage
* Hosting
* AI services
* Functions

In Flutter mostly we use two features {`Authentication` , `Database`> `Firestore Database`}

#### **Links** :
* Firebase : <a href="https://firebase.google.com/" target="_blank">The Link</a>


---


### 2.Authentication


![Authentication](https://achievement-images.teamtreehouse.com/badges_Ruby_UserAuthentication_Stage1.png)


This feature is used for providing `Sign In Screen` & `Sign Up Screen`,
this feature provides many sign in methods like :
* Google
* Yahoo
* Facebook
* Email & Passwords > it means you can sign in with any email and any passwords even if this email isn't real
* etc...

You can with this feature as we mentioned before make the user sign in or register when you use the package of the feature in Flutter you will find that there are some exceptions come with it called `FirebaseAuth Exceptions` it will help you to handle some problems like {`The user registered with existed emai` , `The user signed in with email that isn't exist` , `Wrong Password` , `Short Password` , `Etc...`}
```dart
abstract class Auther {
  //==================== Variables
  FirebaseAuth _auther = FirebaseAuth.instance;
  final String email, password;

  //==================== Constructor
  Auther(this.email, this.password);

  //==================== Functions
  Future<bool> register();

  Future<bool> signIn();
``` 

#### **Links** :
* FirebaseAuth package: <a href="https://pub.dev/packages/firebase_auth" target="_blank">The Link</a>
* Documentation : <a href="https://firebase.flutter.dev/docs/auth/overview" target="_blank">The Link</a>

---

### 3.Firestore Database :floppy_disk:


![Database](https://cdn-icons-png.flaticon.com/512/3208/3208727.png)


This feature is used for creating a database to store the data of the users,
this database is a `Document Oriented Database` not `SQL Database`,
so you create collections and documents inside the collections

##### Comparison 

| SQL Database      | Document Oriented Database |
|-------------------|----------------------------|
| Relation or Table | Collection                 |
| Row               | Document                   |
| Column            | Field                      |


##### Collection
* It has an id or name 
* you create a Documents in it


##### Document
* It has an id or name
* you store in it fields


##### Field
* It takes key `Name of the field` and value `The value of the field`
* The value of the field can be { *`boolean`* , *`number`* , *`string`* , *`map`* , *`array`* , *`etc...`* }

In Flutter for best practice you can create models as classes for the different users and class for encapsulating the functions of the Firestore package, you may create something like handlers as classes that provide some specific operations on the data of the users before execute any functions of the package on it so you will create for each user a handler,

Like Firestore package you will need first to initialize an object from `FirebaseFirestore`
class for using the functions of the package
```dart
abstract class DataBase {
  //==================== Variables
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String collection;

  //==================== Constructor
  DataBase(this.collection);

  //==================== Functions
  Future<bool> addUser(String name, Map<String, dynamic> data);
  
  Future<bool> getUser(String name);
  
  Future<bool> updateUser(String name, Map<String, dynamic> data);
  
  Future<void> deleteUser(String name);
}
``` 

#### **Links** :
* FirebaseFirestore package : <a href="https://pub.dev/packages/cloud_firestore" target="_blank">The Link</a>
* Documentation : <a href="https://firebase.flutter.dev/docs/firestore/overview" target="_blank">The Link</a>
