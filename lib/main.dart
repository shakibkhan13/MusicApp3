import 'package:flutter/material.dart';

void main() {
  runApp(MyMusicApp());
}

class MyMusicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MusicPlayerScreen(),
    );
  }
}

class MusicPlayerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2018/06/30/09/31/background-image-3507320_1280.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AlbumArt(),
              SongTitle(),
              MusicControls(),
            ],
          ),
        ),
      ),
    );
  }
}

class AlbumArt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        image: DecorationImage(
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8QkvtQ-1c3BuAao2EiCKu3yX3R0ax9Gze7tJ_9tg&s'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class SongTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        "Md Shakib Khan",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class MusicControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite, size: 30),
                  onPressed: () {},
                ),
                SizedBox(height: 8),
                Text(
                  " Favorite ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.timer, size: 30),
                  onPressed: () {},
                ),
                SizedBox(height: 8),
                Text(
                  " Timer ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.playlist_add_circle, size: 30),
                  onPressed: () {},
                ),
                SizedBox(height: 8),
                Text(
                  "  Add Music ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.skip_previous, size: 30),
                  onPressed: () {},
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.play_circle_filled, size: 30),
                  onPressed: () {},
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.skip_next, size: 30),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
