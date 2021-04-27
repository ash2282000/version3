import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app/models/userr.dart';

class DatabaseService {

  final String uid;
  DatabaseService({this.uid});

  final CollectionReference user = FirebaseFirestore.instance.collection('users');

  Future updateUserData(String name, String contact,String location) async {
    return await user.doc(uid).set({
      'name' :name,
      'contact' :contact,
      'location' :location,

    });
  }
  UserData _userSnapshottoUserData(DocumentSnapshot snapshot){
    return UserData(
      uid: uid,
      contact: snapshot.data()['contact'],
      name: snapshot.data()['name'],
      location: snapshot.data()['location'],

    );
  }
  Stream<UserData> get userData{
    return user.doc(uid).snapshots().map(_userSnapshottoUserData);
  }
}