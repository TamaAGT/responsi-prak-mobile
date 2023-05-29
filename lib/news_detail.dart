import 'package:flutter/material.dart';

class DetailNews extends StatefulWidget {
  const DetailNews({Key? key}) : super(key: key);

  @override
  State<DetailNews> createState() => _DetailNewsState();
}

class _DetailNewsState extends State<DetailNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text('News'),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          children: [
            Row(
              children: [const Text('test')],
            ),
            Row(),
          ],
        ),
      )
    );
  }
}
