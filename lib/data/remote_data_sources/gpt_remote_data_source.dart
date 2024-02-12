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
      OpenAIChatCompletionModel completion = await OpenAI.instance.chat.create(
        model: "gpt-4",
        // prompt: cocktailPrompt,
        messages: [
          OpenAIChatCompletionChoiceMessageModel(
            content: [
              OpenAIChatCompletionChoiceMessageContentItemModel.text(
                cocktailPrompt,
              ),
            ],
            role: OpenAIChatMessageRole.user,
          )
        ],
        maxTokens: 500,
        temperature: 0.5,
        n: 1,
        // stop: ["\n"],
        // echo: true,
        seed: 42,
        // bestOf: 2,
      );
      print(completion.choices.first.message.content?[0].text ?? '');

      final Map<String, dynamic> jsonMessage =
          jsonDecode(completion.choices.first.message.content?[0].text ?? '');
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
      model: 'dall-e-3',
      prompt:
          'Generate ONLY an IMAGE for a cocktail called ${cocktail.strDrink} and should be served in a glass: ${cocktail.strGlass}, bellow is the recipe ${cocktail.strInstructions}, do not add any text in the image. ',
      n: 1,
      size: OpenAIImageSize.size1024,
      responseFormat: OpenAIImageResponseFormat.url,
    );

    print(image.data[0].url);
    return image.data[0].url ?? '';
  }

  String cocktailPrompt = '''
Generate a JSON object for a unique cocktail recipe that includes the following fields: "strDrink" for the cocktail name, "strTags" for relevant tags like flavor profile or occasion, "strCategory" for the type of drink (e.g., Cocktail, Mocktail), "strAlcoholic" to indicate if it's alcoholic or non-alcoholic, "strGlass" for the recommended glass type, "strInstructions" for the preparation method, and "strIngredient1", "strIngredient2", ... along with "strMeasure1", "strMeasure2", ... for the ingredients and their respective measurements. Ensure all fields are filled with imaginative and unique content that is not commonly found. The recipe should be practical, using ingredients that are easily accessible. Format the response as a single JSON object under the "drinks" key, similar to this template:
All values must be text format.
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
