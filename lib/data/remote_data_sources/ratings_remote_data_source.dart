import 'package:cloud_firestore/cloud_firestore.dart';
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
}
