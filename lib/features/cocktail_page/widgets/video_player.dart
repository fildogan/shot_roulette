import 'package:flutter/material.dart';
import 'package:shot_roulette/features/cocktail_page/cubit/cocktail_page_cubit.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayer extends StatelessWidget {
  const VideoPlayer({super.key, required this.state
      // required this.youtubePlayerController,
      });

  // final YoutubePlayerController youtubePlayerController;

  final CocktailPageState state;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController youtubePlayerController = YoutubePlayerController(
      initialVideoId: state.videoId,
      flags: const YoutubePlayerFlags(
        showLiveFullscreenButton: false,
        autoPlay: false,
        mute: false,
      ),
    );

    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          bottomActions: [
            CurrentPosition(),
            ProgressBar(
              isExpanded: true,
            ),
            RemainingDuration(),
          ],
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
        builder: (context, player) {
          return Column(
            children: [player],
          );
        });
  }
}
