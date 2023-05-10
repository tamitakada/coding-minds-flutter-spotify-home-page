import 'package:flutter/material.dart';
import 'mini_song_view.dart';
import 'song_view.dart';
import 'playlist_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.access_time),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          )
        ],
        title: const Text(
          "Good morning",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      MiniSongView(
                        songImage: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi1.wp.com%2Fvendettasportsmedia.com%2Fwp-content%2Fuploads%2F2021%2F07%2Ftyler-the-creator-call-me-if-you-get-lost-album-cover-interview-lead-image.jpg%3Fresize%3D1024%252C1024%26ssl%3D1&f=1&nofb=1&ipt=ee0e9ea024b0bca3fc16e5c3f0b4586fc6f5fc63fcf7083000abd8db8d98d600&ipo=images",
                        songTitle: "DOGTOOTH",
                      ),
                      MiniSongView(
                        songImage: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.scdn.co%2Fimage%2Fab67616d0000b273e0b60c608586d88252b8fbc0&f=1&nofb=1&ipt=8ec5b9e449785dcf7c292892014cc14f491644b99d94bae8fbc8714d6d4c10bb&ipo=images",
                        songTitle: "Midnights (3am edition)",
                      ),
                      MiniSongView(
                        songImage: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.scdn.co%2Fimage%2Fab67706f00000003d971c6c23114fc7636dc23eb&f=1&nofb=1&ipt=ce190fe85e0d71ed13c439aae4a1ae74548b33d3f484c395863fd5779dd051b9&ipo=images",
                        songTitle: "Viral Hits",
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      MiniSongView(
                        songImage: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.scdn.co%2Fimage%2Fab67616d0000b2735419c0986ee778b7489da418&f=1&nofb=1&ipt=3adede928a75a4e4f2fa4e741e40da676358324e0d02e9bb480a6895c44a5380&ipo=images",
                        songTitle: "lofi for studying",
                      ),
                      MiniSongView(
                        songImage: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fseed-mix-image.spotifycdn.com%2Fv6%2Fimg%2Fpop%2F6KImCVD70vtIoJWnq6nGn3%2Fen%2Flarge&f=1&nofb=1&ipt=e2da17c921c03926ef038d54e0854f333e97a2426f62f0bff2a7878e74d1b07a&ipo=images",
                        songTitle: "Pop Mix",
                      ),
                      MiniSongView(
                        songImage: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fratedrnb.com%2Fcdn%2F2022%2F12%2Fsza-sos-album-cover-ratedrnb-scaled.jpg&f=1&nofb=1&ipt=55afd84f818f65ed329d44a8a9b9cac76612572663cbd0d9a2722c67a4bd3083&ipo=images",
                        songTitle: "SOS",
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 80,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fradiomilwaukee-wordpress-uploads.s3.amazonaws.com%2Fwp-content%2Fuploads%2F2020%2F02%2F12071536%2FKhalid.jpg&f=1&nofb=1&ipt=cc3637b1484b57cd3c250e15a0996ed2aa852e31bb239d9766098bdb079e5f1b&ipo=images"
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "New release from",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Khalid",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                )
              ],
            ),
            const SongView(songImage: "https://t2.genius.com/unsafe/504x504/https%3A%2F%2Fimages.genius.com%2F0973b67c1888022ef61e577ad0d0915a.1000x1000x1.png", songTitle: "Be The One (with Khalid)", artist: "Bree Runway・Khalid"),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Pop",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Container(
              constraints: const BoxConstraints(
                maxHeight: 300,
              ),
              child: OverflowBox(
                maxWidth: double.infinity,
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    PlaylistView(
                        playlistCover: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.scdn.co%2Fimage%2Fab67706f00000003816bfa84fc1984d377ba5652&f=1&nofb=1&ipt=9cb61a056f90ee127b74e05a15cc3c70f62309ba2ba95fb1398c447c01ccc8fd&ipo=images",
                        subtitle: "Dua Lipa, Bad Bunny, Ed Sheeran, Taylor Swift and more"
                    ),
                    PlaylistView(
                        playlistCover: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.scdn.co%2Fimage%2Fab67706f000000037c62389d6790886348ab50fb&f=1&nofb=1&ipt=fc2f57010a209f881fbdabbd536c025eb43753dbca2b15497f6d0e00bd60a831&ipo=images",
                        subtitle: "Post Malone, The Weeknd, SZA and more"
                    ),
                    PlaylistView(
                        playlistCover: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.scdn.co%2Fimage%2Fab67706f00000003c47b238e17323b094b0b9cab&f=1&nofb=1&ipt=723d81d44fd997bbe9af6cf606ebecea0cdaa951791e84570c89abf1ae3a5dfe&ipo=images",
                        subtitle: "Taylor Swift, Ice Spice, Olivia Rodrigo and more"
                    )
                  ],
                )
              ),
            )
          ],
        ),
      )
    );
  }
}
