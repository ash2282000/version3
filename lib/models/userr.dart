import 'package:cloud_firestore/cloud_firestore.dart';

class Userr{
  String uid;
  Userr({this.uid});
}

class UserData{
  String uid;
  String name;
  String contact;
  String location;

  UserData({this.uid, this.contact, this.name, this.location});
}