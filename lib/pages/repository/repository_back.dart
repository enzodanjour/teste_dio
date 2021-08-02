import 'package:dio/dio.dart';
import 'package:teste_dio/models/post.dart';

abstract class IRepositoryApi {
  Future<Post> getPost();
}

class RepositoryApi implements IRepositoryApi {
  Dio dio = Dio();

  @override
  Future<Post> getPost() async {
    try {
      Map<String, dynamic> post = {
        'id': 2,
        'titulo': 'A volta dps que não foram',
        'texto': 'fui e voltei',
      };
      final response = await dio.get('http://192.168.1.153:8080/posts/1');
      print(response.data);
      return Post.fromMap(post);
    } on DioError catch (e, s) {
      print(e);
      print(s);
      throw Exception(e);
    }
  }
}
