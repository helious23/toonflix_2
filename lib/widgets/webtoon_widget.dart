import 'package:flutter/material.dart';
import 'package:toonflix/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;

  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            fullscreenDialog: true,
            builder: (context) => DetailScreen(
              title: title,
              thumb: thumb,
              id: id,
            ),
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: id,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15,
                    offset: const Offset(5, 5),
                    color: Colors.black.withOpacity(0.3),
                  )
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.hardEdge,
              width: 250,
              child: Image.network(thumb),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
