import 'package:flutter/material.dart';

class Detail2Screen extends StatelessWidget {
  final String title, thumb, id;
  const Detail2Screen({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
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
                    width: 250,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15,
                          offset: const Offset(10, 10),
                          color: Colors.black.withOpacity(0.3),
                        )
                      ],
                    ),
                    child:
                        Image.network('https://picsum.photos/id/421/200/200'),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
