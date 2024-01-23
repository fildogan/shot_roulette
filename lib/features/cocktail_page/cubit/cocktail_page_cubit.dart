import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shot_roulette/app/core/enums.dart';
import 'package:shot_roulette/domain/models/cocktail_model.dart';
import 'package:shot_roulette/domain/repositories/cocktails_repository.dart';

part 'cocktail_page_state.dart';
part 'cocktail_page_cubit.freezed.dart';

@injectable
class CocktailPageCubit extends Cubit<CocktailPageState> {
  CocktailPageCubit({
    required this.cocktailsRepository,
  }) : super(CocktailPageState());

  final CocktailsRepository cocktailsRepository;

  Future<void> rollShot() async {
    final randomCocktailResponse =
        await cocktailsRepository.getRandomCocktail();
    final randomCocktail = randomCocktailResponse.drinks[0];
    emit(
      state.copyWith(cocktail: randomCocktail),
    );
  }

  Future<void> resetShot() async {
    emit(
      state.copyWith(
        cocktail: null,
      ),
    );
  }
}
