import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  void getImages() async {
    final dio = Dio();

    final response = await dio.get(
        'https://pixabay.com/api/?key=49226875-dd469dfea4c42634d1eec15d2&q=city%20landscape&image_type=photo');
    print(response.data);
  }

  @override
  Widget build(BuildContext context) {
    getImages();

    return const Placeholder();
  }
}
