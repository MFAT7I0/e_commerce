import 'package:dio/dio.dart';
import 'package:first_broject/modeling/home_model.dart';

class HomeRepo {
  final _dio = Dio();

  Future<HomeModel> getHomeData() async {
    final response = await _dio.get('https://student.valuxapps.com/api/');
    final homeData = HomeModel.fromJson(response.data);
    return homeData;
  }
}
