import 'package:flutter/material.dart';
import 'package:responsi_news_app/list_news_screen.dart';
import 'package:responsi_news_app/page_list_news.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 100.0,
                ),
                Image.network("https://cdn.cnnindonesia.com/cnnid/images/logo_cnn_fav.png", width: 200, height: 200,),
                const SizedBox(
                  height: 100.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return PageListNews('terbaru');
                              }));
                            }, child: const Text("Terbaru")),
                        const SizedBox(
                          width: 15.0,
                        ),
                        ElevatedButton(style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return PageListNews('nasional');
                          }));
                        }, child: const Text("Nasional"))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return PageListNews('olahraga');
                          }));
                        }, child: const Text("Olahraga")),
                        const SizedBox(
                          width: 15.0,
                        ),
                        ElevatedButton(style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return PageListNews('teknologi');
                          }));
                        }, child: const Text("Teknologi"))
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
