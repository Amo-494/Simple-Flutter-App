import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String uid;
  final String username;

  final String postId;
  final DateTime datePublished;
  final String postUrl;
  

  const Post({
    required this.uid,
    required this.username,
    required this.postId,
    required this.datePublished,
    required this.postUrl,
  
  });

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post(
        uid: snapshot["uid"],
        postId: snapshot["postId"],
        datePublished: snapshot["datePublished"],
        username: snapshot["username"],
        postUrl: snapshot['postUrl'],
        );
  }

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "username": username,
        "postId": postId,
        "datePublished": datePublished,
        'postUrl': postUrl,
       
      };
}
