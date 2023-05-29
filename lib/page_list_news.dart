import 'package:flutter/material.dart';
import 'package:responsi_news_app/api_data_source.dart';
import 'package:responsi_news_app/list_news_model.dart';
import 'package:responsi_news_app/news_detail.dart';

class PageListNews extends StatefulWidget {
  final String category;
  const PageListNews(this.category, {Key? key}) : super(key: key);

  @override
  State<PageListNews> createState() => _PageListNewsState();
}

class _PageListNewsState extends State<PageListNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.category),
        ),
      ),
      body: _buildListNewsBody(widget.category),
    );
  }

  Widget _buildListNewsBody(String category){
    return Container(
        child: FutureBuilder(
        future: ApiDataSource.instance.loadNews(category),
    builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
    if(snapshot.hasError){
    // Jika data ada error maka akan ditampilkan hasil error
    return _buildErrorSection();
    }
    if(snapshot.hasData){
    ListNewsModel listNewsModel = ListNewsModel.fromJson(snapshot.data);
    return _buildSuccessSection(listNewsModel);
    }
    return _buildLoadingSection();
  },
  ),
  );
}

Widget _buildErrorSection() {
  return Text("Error");
}

Widget _buildLoadingSection() {
  return Center(
    child: CircularProgressIndicator(),
  );
}

Widget _buildSuccessSection(ListNewsModel data) {
  return ListView.builder(
    itemCount: data.data!.posts!.length,
    itemBuilder: (BuildContext context, int index) {
      return _buildItemUsers(data.data!.posts![index]);
    },
  );
}

Widget _buildItemUsers(Posts userData) {
  return InkWell(
    onTap: () {},
    child: Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 1,
            child: Image.network(userData.thumbnail!),
          ),
          Expanded(flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(userData.title!, overflow: TextOverflow.ellipsis,)
                  ],
                ),
              )
          )
        ],
      ),
    ),
  );
}
}
