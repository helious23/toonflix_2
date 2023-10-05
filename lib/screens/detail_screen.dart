import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title, thumb, id;

  const DetailScreen({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
            ],
          ),
        ],
      ),
    );
  }
}
