import 'package:flutter/material.dart';
import 'package:shot_roulette/features/cocktail_page/cubit/cocktail_page_cubit.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayer extends StatelessWidget {
  const VideoPlayer({
    super.key,
    required this.state,
    required this.youtubePlayerController,
  });

  final YoutubePlayerController youtubePlayerController;

  final CocktailPageState state;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: YoutubePlayer(
        controller: youtubePlayerController,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.amber,
        progressColors: const ProgressBarColors(
          playedColor: Colors.amber,
          handleColor: Colors.amberAccent,
        ),
        // onReady: () {
        //   youtubePlayerController.addListener(listener);
        // },
      ),
    );
  }
}
