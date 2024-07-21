import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:uts_cadangan/models/profile.dart';

class ApiService {
  final String apiUrl = "http://localhost:8000/api/profiles";

  Future<List<Profile>> fetchProfiles() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((profile) => Profile.fromJson(profile)).toList();
    } else {
      throw Exception('Failed to load profiles');
    }
  }
}
