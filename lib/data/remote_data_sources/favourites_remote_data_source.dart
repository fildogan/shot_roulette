import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class FavouritesRemoteDataSource {
  Future<List<String>> getFavouritesIdList() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    final List<String> favouritesIdList = [];
    if (userID == null) {
      // throw Exception('User is not logged in');
      return [];
    }
    final favourites = await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('favourites')
        .get();

    for (final cocktailId in favourites.docs) {
      favouritesIdList.add(cocktailId.id);
    }

    return favouritesIdList;
  }

  Future<void> add({
    required String cocktailId,
  }) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      // throw Exception('User is not logged in');
      return;
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('favourites')
        .doc(cocktailId)
        .set({});
  }

  Future<void> remove({
    required String cocktailId,
  }) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      // throw Exception('User is not logged in');
      return;
    }
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('favourites')
        .doc(cocktailId)
        .delete();
  }

  Future<bool> checkFavourite({
    required String cocktailId,
  }) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      // throw Exception('User is not logged in');
      return false;
    }
    DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc(userID)
        .collection('favourites')
        .doc(cocktailId)
        .get();

    if (documentSnapshot.exists) {
      return true;
    } else {
      return false;
    }
  }

  // Future<void> create({
  //   required String cocktailId,
  //   required double value,
  // }) async {
  //   final userID = FirebaseAuth.instance.currentUser?.uid;
  //   if (userID == null) {
  //     throw Exception('User is not logged in');
  //   }
  //   await FirebaseFirestore.instance
  //       .collection('favourites')
  //       .doc(cocktailId)
  //       .set({
  //     'ratingList': [
  //       {
  //         "userId": userID,
  //         "value": value,
  //       },
  //     ]
  //   });
  // }
}
