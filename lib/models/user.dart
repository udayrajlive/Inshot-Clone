
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class User{
  String name;
  String profilePhoto;
  String email;
  String uid;

  User({
    required this.name,
    required this.email,
    required this.uid,
    required this.profilePhoto,
});
  //this will give Map/object to Jso
 Map<String,dynamic> toJson() =>{
   "name": name,
   "profilePhoto": profilePhoto,
   "email": email,
   "uid" :uid,
 };
 static User fromSnap(DocumentSnapshot snap){
   var snapshot = snap.data() as Map<String,dynamic>;
   return User(email: snapshot['email'],profilePhoto: snapshot['profilePhoto'],uid: snapshot['uid'], name:snapshot['name']);
 }

}