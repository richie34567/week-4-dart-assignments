void main() {
  // String Concatenation
  String firstName = "Richard";
  String lastName = "Kasomi";
  String fullName = firstName + " " + lastName;
  print("Full Name (Concatenation): $fullName");

  // String Interpolation
  String greeting = "Hello, $fullName!";
  print("Greeting (Interpolation): $greeting");

  // Substring Extraction
  String extractedSubstring = fullName.substring(0, 7); // Extracts "Richard"
  print("Extracted Substring: $extractedSubstring");

  // Case Conversion
  String upperCaseName = fullName.toUpperCase();
  String lowerCaseName = fullName.toLowerCase();
  print("Uppercase: $upperCaseName");
  print("Lowercase: $lowerCaseName");

  // Reverse the String
  String reversedName = reverseString(fullName);
  print("Reversed Name: $reversedName");

  // Count the Length of the String
  int nameLength = fullName.length;
  print("Length of Full Name: $nameLength");
}

// Function to reverse a string
String reverseString(String input) {
  return input.split('').reversed.join('');
}
