import 'package:http/http.dart' as http;
import 'package:weather_app/feature/api_services.dart';

class RemoteServices {
  Future<List<Post>?> getPosts() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    } else {
      print('object');
      return null;
    }
  }
}
