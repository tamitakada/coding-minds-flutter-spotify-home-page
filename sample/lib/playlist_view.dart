import 'package:flutter/material.dart';

class PlaylistView extends StatelessWidget {

  final String playlistCover;
  final String subtitle;

  const PlaylistView({ super.key, required this.playlistCover, required this.subtitle });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Image.network(
              playlistCover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              subtitle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 17
              ),
            ),
          )
        ],
      ),
    );
  }
}
