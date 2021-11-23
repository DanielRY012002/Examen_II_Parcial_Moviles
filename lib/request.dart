import 'dart:convert';

import "package:http/http.dart" as http;

void main() async {
  var url = Uri.parse("http://localhost:3000/api/auth/user");

  var response = await http.get(url);
  var responseJson = jsonDecode(utf8.decode(response.bodyBytes)) as List;
  print("duele mongol: ${responseJson.elementAt(1)}");

  for (Map r in responseJson) {
    print(r["username"]);
  }
}
