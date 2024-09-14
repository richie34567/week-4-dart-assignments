import 'package:intl/intl.dart'; // Import the 'intl' package for formatting and parsing dates.

void main() {
  // Get the current date and time.
  DateTime now = DateTime.now();
  print("Current Date and Time: $now"); // Display the current date and time.

  // Format the current date using the 'intl' package (e.g., "2024-09-12 15:30:00").
  String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(now);
  print("Formatted Date: $formattedDate"); // Display the formatted date.

  // Parse a date string into a DateTime object.
  String dateString = "2023-12-01 08:30:00"; // This is the date string to be parsed.
  DateTime parsedDate = DateTime.parse(dateString); // Parse the string into a DateTime object.
  print("Parsed Date: $parsedDate"); // Display the parsed date.

  // Manipulate the date by adding and subtracting days.
  // Add 10 days to the current date.
  DateTime futureDate = now.add(Duration(days: 10));
  print("Date 10 Days from Now: $futureDate"); // Display the future date.

  // Subtract 5 days from the current date.
  DateTime pastDate = now.subtract(Duration(days: 5));
  print("Date 5 Days Ago: $pastDate"); // Display the past date.

  // Calculate the difference between two dates.
  Duration difference = futureDate.difference(now); // Calculate the difference in time between two dates.
  print("Difference between futureDate and now: ${difference.inDays} days"); // Display the difference in days.

  // Calculate the difference between the current date and the parsed date.
  Duration diffFromParsedDate = now.difference(parsedDate);
  print("Difference between now and parsedDate: ${diffFromParsedDate.inDays} days"); // Display the difference in days.

  // Format the future date into a more readable format (e.g., "Thursday, September 22, 2024").
  String readableDate = DateFormat('EEEE, MMMM d, yyyy').format(futureDate);
  print("Future Date (Readable): $readableDate"); // Display the future date in a readable format.

  // Extract specific components (year, month, day) from the current date.
  int year = now.year; // Extract the year.
  int month = now.month; // Extract the month.
  int day = now.day; // Extract the day.
  print("Year: $year, Month: $month, Day: $day"); // Display the individual components of the current date.
}
