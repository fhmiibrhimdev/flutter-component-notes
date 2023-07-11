import 'package:flutter/material.dart';

class PlayMusic extends StatelessWidget {
  final String title;
  final String artist;
  final String imageURL;

  const PlayMusic({
    super.key,
    required this.title,
    required this.artist,
    required this.imageURL,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final width = MediaQuery.of(context).size.width;
    // ignore: unused_local_variable
    final height = MediaQuery.of(context).size.height;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: width * 0.15,
          height: width * 0.15,
          margin: const EdgeInsets.only(right: 10.0),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              fit: BoxFit.cover,
              image:
                  NetworkImage(imageURL), // Ganti dengan URL gambar yang sesuai
            ),
          ),
        ),
        SizedBox(
          width: width * 0.01,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.012,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: height * 0.005,
            ),
            Text(
              artist,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            )
          ],
        ),
      ],
    );
  }
}
