//status code success: 200 >= success < 300
class Success{
  String body;
  int statusCode;

  Success({required this.body, this.statusCode = 201});
}
//status code failure: failure != (200 -> 300)
class Failure{
  String strError;
  int statusCode;

  Failure({required this.strError, this.statusCode = 404});
}