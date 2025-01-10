```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here. Note that this assumes the response is JSON.
      final jsonData = jsonDecode(response.body);
      // Use jsonData...
    } else {
      // Handle the error here.
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle the exception here. This is crucial for preventing app crashes.
    print('Error fetching data: $e');
    // Optionally, re-throw to allow higher levels to handle it
    // rethrow;
  }
}
```