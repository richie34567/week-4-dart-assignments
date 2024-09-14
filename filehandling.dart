import 'dart:io'; // Importing the 'dart:io' package to handle file operations.

void main() async {
  // File paths for the input and output files.
  String inputFile = 'input.txt';  // The file to read from
  String outputFile = 'output.txt'; // The file to write to

  try {
    // Reading from the input file and storing the content in 'fileContent'.
    String fileContent = await readFile(inputFile);
    print("Content of $inputFile:\n$fileContent"); // Print the content of the input file.

    // Writing new data to the output file.
    String newData = "This is the new data being written to the output file.";
    await writeFile(outputFile, newData); // Write newData into 'output.txt'.
    print("New data has been written to $outputFile successfully."); // Success message after writing.
  } catch (e) {
    // Catching any errors during the file operations and printing an error message.
    print("An error occurred: $e");
  }
}

// Function to read from a file.
// Takes the file path as an argument and returns the file's content as a string.
Future<String> readFile(String filePath) async {
  try {
    final file = File(filePath); // Create a File object for the specified file path.
    
    // Check if the file exists. If not, throw an error.
    if (!await file.exists()) {
      throw Exception("File not found: $filePath");
    }

    // Read the file content asynchronously and return it as a string.
    String contents = await file.readAsString();
    return contents;
  } catch (e) {
    // If there's an error during reading, throw an exception with the error details.
    throw Exception("Error reading file: $filePath, $e");
  }
}

// Function to write to a file.
// Takes the file path and the data to write as arguments.
Future<void> writeFile(String filePath, String data) async {
  try {
    final file = File(filePath); // Create a File object for the specified file path.

    // Write the given data to the file asynchronously. If the file doesn't exist, it will be created.
    await file.writeAsString(data);
  } catch (e) {
    // If there's an error during writing, throw an exception with the error details.
    throw Exception("Error writing to file: $filePath, $e");
  }
}
