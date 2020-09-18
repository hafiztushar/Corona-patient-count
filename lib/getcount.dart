import 'package:http/http.dart';
import 'dart:convert';

class GetCount {
  int count;

  Future<void> getcount(String address) async {
    //gets lat long

    //get address
    Response response = await get('https://corona-bd.herokuapp.com/district');
    Map data = jsonDecode(response.body);
    print(data);
  }
}
