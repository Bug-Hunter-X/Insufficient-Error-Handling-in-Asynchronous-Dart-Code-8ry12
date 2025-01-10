```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // Use jsonData...
      } on FormatException catch (e) {
        print('Error: Invalid JSON format: $e');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on http.ClientException catch (e) {
    print('Network Error: $e');
  } on FormatException catch (e) {
    print('JSON Format Error: $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
```