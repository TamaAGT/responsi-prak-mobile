import 'package:flutter/material.dart';
import 'base_network.dart';

class ApiDataSource {
  static ApiDataSource instance = ApiDataSource();

  Future<Map<String, dynamic>> loadNews(String category) {
    return BaseNetwork.get(category);
  }

}