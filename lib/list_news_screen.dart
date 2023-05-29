import 'package:flutter/material.dart';
import 'package:responsi_news_app/home_screen.dart';
import 'package:responsi_news_app/news_detail.dart';

class ListNews extends StatelessWidget {
  final String category;
  const ListNews(this.category, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child:  Text(category)),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailNews();
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 1,
                  child: Image.network('https://cdn.cnnindonesia.com/cnnid/images/logo_cnn_fav.png'),
                  ),
                  Expanded(flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('TEst')
                          ],
                        ),
                      )
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
