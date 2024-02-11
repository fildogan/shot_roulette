import 'dart:convert';

import 'package:dart_openai/dart_openai.dart';
import 'package:injectable/injectable.dart';
import 'package:shot_roulette/domain/models/cocktail_model.dart';
import 'package:shot_roulette/domain/responses/cocktail_list_response.dart';

@injectable
class GPTRemoteDataSource {
  Future<CocktailListResponse> getAICocktail() async {
    CocktailListResponse response = CocktailListResponse([]);
    try {
      OpenAICompletionModel completion =
          await OpenAI.instance.completion.create(
        model: "gpt-3.5-turbo",
        prompt: cocktailPrompt,
        maxTokens: 20,
        temperature: 0.5,
        n: 1,
        stop: ["\n"],
        echo: true,
        seed: 42,
        bestOf: 2,
      );
      final Map<String, dynamic> jsonMessage =
          await jsonDecode(completion.choices.first.text);
      response = CocktailListResponse.fromJson(jsonMessage);
    } on RequestFailedException catch (e) {
      print(e.message);
      print(e.statusCode);
    }
    return response;
  }

  Future<String> getAICocktailImage({required CocktailModel cocktail}) async {
    OpenAIImageModel image = await OpenAI.instance.image.create(
      // choose model?
      // model: '',
      prompt: cocktail.toJson().toString(),
      n: 1,
      size: OpenAIImageSize.size1024,
      responseFormat: OpenAIImageResponseFormat.url,
    );

    return image.data[0].url ?? '';
  }

  String cocktailPrompt = ''' User
Generate a JSON object for a unique cocktail recipe that includes the following fields: "strDrink" for the cocktail name, "strTags" for relevant tags like flavor profile or occasion, "strCategory" for the type of drink (e.g., Cocktail, Mocktail), "strAlcoholic" to indicate if it's alcoholic or non-alcoholic, "strGlass" for the recommended glass type, "strInstructions" for the preparation method, and "strIngredient1", "strIngredient2", ... along with "strMeasure1", "strMeasure2", ... for the ingredients and their respective measurements. Ensure all fields are filled with imaginative and unique content that is not commonly found. The recipe should be practical, using ingredients that are easily accessible. Format the response as a single JSON object under the "drinks" key, similar to this template:

{
  "drinks": [
    {
      "strDrink": "",
      "strTags": "",
      "strCategory": "",
      "strAlcoholic": "",
      "strGlass": "",
      "strInstructions": "",
      "strIngredient1": "",
      "strMeasure1": "",
      "strIngredient2": "",
      "strMeasure2": "",
      ...
    }
  ]
}

Please fill in the template with a creative cocktail recipe that follows these instructions. ''';
}
