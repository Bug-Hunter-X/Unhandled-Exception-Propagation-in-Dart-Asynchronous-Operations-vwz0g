```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success!
      final jsonData = jsonDecode(response.body);
      // Process jsonData
      // return jsonData; // Consider returning processed data
    } else {
      // Handle error appropriately.  Throwing a custom exception improves clarity
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error: $e');
    // Re-throwing the exception allows for higher-level handling
    rethrow; 
  }
}

void main() async {
  try {
    await fetchData();
    print('Data fetched successfully!');
  } catch (e) {
    print('An error occurred: $e');
    // Additional error handling here
  }
}
```