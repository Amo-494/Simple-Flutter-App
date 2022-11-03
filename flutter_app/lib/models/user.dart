

import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String email;
  final String uid;

  final String username;
  final String bio;
 

  const User(
      {required this.username,
      required this.uid,
    
      required this.email,
      required this.bio,
      });

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
      username: snapshot["username"],
      uid: snapshot["uid"],
      email: snapshot["email"],
     
      bio: snapshot["bio"],
      
    );
  }

  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "email": email,
     
        "bio": bio,
      };
}