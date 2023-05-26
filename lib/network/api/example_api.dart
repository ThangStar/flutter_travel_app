import 'package:http/http.dart' as http;
import 'package:travel_app/network/repositories/example_repository.dart';

import '../utils/response.dart';

// Example: request API
// How to use: ExampleAPI().getDataExample()
// How to use: ExampleAPI().postDataExample(your_data)

const String EXAMPLE_URL = "http://exampleAPI.com";
class ExampleAPI extends ExampleRepo {

  @override
  Future<Object> getDataExample() async {
    try {
      final response = await http.get(Uri.parse(EXAMPLE_URL));
      if (response.statusCode >= 200 && response.statusCode < 300) {
        final body = response.body;
        return Success(body: body, statusCode: response.statusCode);
      }
      return Failure(strError: "error");
    } catch (e) {
      return Failure(strError: "error");
    }
  }

  @override
  Future<Object> postDataExample(String body) async {
    try {
      final response = await http.post(Uri.parse(EXAMPLE_URL), body: body);
      if (response.statusCode >= 200 && response.statusCode < 300) {
        final body = response.body;
        return Success(body: body, statusCode: response.statusCode);
      }
      return Failure(strError: "error");
    } catch (e) {
      return Failure(strError: "error");
    }
  }

  ExampleAPI(){
   //init config api here!
  }
}
