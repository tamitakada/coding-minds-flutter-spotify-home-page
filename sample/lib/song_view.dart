import 'package:flutter/material.dart';

class SongView extends StatelessWidget {

  final String songImage;
  final String songTitle;
  final String artist;

  const SongView({ super.key, required this.songImage, required this.songTitle, required this.artist });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Image.network(songImage),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        songTitle,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        artist,
                        style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 18
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 35,
                        )
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_circle_fill_rounded,
                            color: Colors.white,
                            size: 35,
                          )
                      ),
                    ],
                  )
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}
