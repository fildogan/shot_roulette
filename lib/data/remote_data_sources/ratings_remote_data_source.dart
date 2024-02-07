import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:shot_roulette/domain/models/rated_cocktail_model.dart';
import 'package:shot_roulette/domain/models/rating_model.dart';

@injectable
class RatingsRemoteDataSource {
  Future<RatedCocktailModel> getRatingsById(String id) async {
    final docRef = FirebaseFirestore.instance.collection('ratings').doc(id);

    final doc = await docRef.get();

    if (doc.exists) {
      return RatedCocktailModel(
        id: doc.id,
        ratingList: doc.data().toString().contains('ratingList')
            ? List<RatingModel>.from(
                doc['ratingList'].map((x) => RatingModel.fromJson(x))).toList()
            : [],
      );
    } else {
      // Document does not exist
      return RatedCocktailModel(
        id: id,
        ratingList: [],
      );
    }
  }

  Future<void> add({
    required String cocktailId,
    required double value,
  }) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('ratings')
        .doc(cocktailId)
        .update({
      'ratingList': FieldValue.arrayUnion([
        {
          "userId": userID,
          "value": value,
        },
      ]),
    });
  }

  Future<void> remove({
    required String cocktailId,
    required double value,
  }) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance
        .collection('ratings')
        .doc(cocktailId)
        .update({
      'ratingList': FieldValue.arrayRemove([
        {
          "userId": userID,
          "value": value,
        },
      ]),
    });
  }

  Future<void> create({
    required String cocktailId,
    required double value,
  }) async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      throw Exception('User is not logged in');
    }
    await FirebaseFirestore.instance.collection('ratings').doc(cocktailId).set({
      'ratingList': [
        {
          "userId": userID,
          "value": value,
        },
      ]
    });
  }
}
