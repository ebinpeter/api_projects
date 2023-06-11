import 'dart:convert';

import 'package:api_intergration/numberfact/numberfact.dart';
import 'package:http/http.dart' as http;

Future<Numberfact> getnumber({required String number}) async {
  final _reponse =
      await http.get(Uri.parse("http://numbersapi.com/$number?json"));
  final bodyofjson = jsonDecode(_reponse.body) as Map<String, dynamic>;
  final data = Numberfact.fromJson(bodyofjson);
  return data;
}
