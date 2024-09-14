void main() {
  // List: An ordered collection, allows duplicate elements
  List<String> fruits = ["Apple", "Banana", "Mango", "Apple"];
  print("Initial List: $fruits");

  // Adding items to a List
  fruits.add("Orange");
  print("List after adding Orange: $fruits");

  // Removing an item from a List
  fruits.remove("Banana");
  print("List after removing Banana: $fruits");

  // Iterating over a List
  print("Iterating over List:");
  for (String fruit in fruits) {
    print(fruit);
  }

  // Scenario: Lists are appropriate when order matters and duplicates are allowed
  print("\nList is appropriate when order matters and duplicates are allowed.\n");

  // Set: An unordered collection, does not allow duplicate elements
  Set<String> animals = {"Dog", "Cat", "Elephant"};
  print("Initial Set: $animals");

  // Adding items to a Set
  animals.add("Lion");
  animals.add("Dog"); // Adding a duplicate item
  print("Set after adding Lion and a duplicate Dog: $animals");

  // Removing an item from a Set
  animals.remove("Cat");
  print("Set after removing Cat: $animals");

  // Iterating over a Set
  print("Iterating over Set:");
  for (String animal in animals) {
    print(animal);
  }

  // Scenario: Sets are appropriate when uniqueness is required and order is not important
  print("\nSet is appropriate when uniqueness is required and order is not important.\n");

  // Map: A collection of key-value pairs, keys are unique
  Map<String, String> countryCapital = {
    "USA": "Washington, D.C.",
    "Canada": "Ottawa",
    "Germany": "Berlin"
  };
  print("Initial Map: $countryCapital");

  // Adding items to a Map
  countryCapital["Japan"] = "Tokyo";
  print("Map after adding Japan: $countryCapital");

  // Removing an item from a Map
  countryCapital.remove("Germany");
  print("Map after removing Germany: $countryCapital");

  // Iterating over a Map (key-value pairs)
  print("Iterating over Map:");
  countryCapital.forEach((country, capital) {
    print("The capital of $country is $capital");
  });

  // Scenario: Maps are appropriate when you need to associate unique keys with values
  print("\nMap is appropriate when you need to associate unique keys with values.");
}
