import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:minggu_14/model/color_model.dart';

class FetchData {
  final String baseUrl = 'https://reqres.in/api/unknown';

  Future<List<ColorModel>> fetchData() async {
    try {
      final res = await http.get(
        Uri.parse(baseUrl),
      );

      if (res.statusCode == 200) {
        return List<ColorModel>.from(
          jsonDecode(res.body)['data'].map(
            (color) => ColorModel.fromJson(color),
          ),
        );
      }

      throw Exception('Failed to Fetch Data');
    } catch (e) {
      rethrow;
    }
  }
}
