import 'dart:io'; // For file operations
import 'package:intl/intl.dart'; // For date formatting

// Function to perform various string manipulations
String manipulateString(String input) {
  String reversed = input.split('').reversed.join(''); // Reverse the string
  String upperCase = input.toUpperCase(); // Convert to uppercase
  String lowerCase = input.toLowerCase(); // Convert to lowercase
  String concatenated = "Original: $input | Reversed: $reversed | Uppercase: $upperCase | Lowercase: $lowerCase";
  
  return concatenated;
}

// Function to log the current date and time
String getCurrentDateTime() {
  DateTime now = DateTime.now();
  return DateFormat('yyyy-MM-dd HH:mm:ss').format(now); // Format the current date and time
}

// Function to save the data to a file
Future<void> saveToFile(String filePath, List<String> data) async {
  final file = File(filePath);
  await file.writeAsString(data.join('\n')); // Write all the collected data to the file
  print("Data saved to $filePath");
}

void main() async {
  List<String> entries = []; // Collection to store the results
  
  // Ask user for input
  print("Enter a string (or type 'exit' to finish):");
  while (true) {
    String? input = stdin.readLineSync(); // Read user input
    
    if (input == null || input.toLowerCase() == 'exit') {
      break; // Exit if the user types 'exit'
    }
    
    // Perform string manipulations
    String manipulatedString = manipulateString(input);
    
    // Get the current date and time
    String timestamp = getCurrentDateTime();
    
    // Combine the string manipulation result and timestamp
    String entry = "$timestamp - $manipulatedString";
    
    // Store the result in the collection
    entries.add(entry);
    
    // Display the result
    print("Entry added: $entry");
  }
  
  // Save all the entries to a file
  String filePath = 'entries.txt'; // File to save the entries
  await saveToFile(filePath, entries);
  
  print("Program completed. All entries have been saved to the file.");
}
