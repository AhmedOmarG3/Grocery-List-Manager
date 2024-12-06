import 'dart:io';
import 'functions.dart';

void main() {
  List<String> items = []; // Initialize an empty grocery list
  while (true) {
    // Display the menu options
    print('================> Grocery List Manager <==============');
    print("""○ 1. Add Item
○ 2. Remove Item
○ 3. View List
○ 4. Search for Item
○ 5. View in Uppercase
○ 6. List without repetition
○ 7. Exit""");

    // Prompt the user to select an option
    print('Enter your choice:');
    int choose = int.parse(
        stdin.readLineSync()!); // Parse the user's input as an integer

    if (choose == 1) {
      // Add an item to the list
      print('Enter the item:');
      String item = stdin.readLineSync()!;
      if (addItem(items, item)) {
        print('The item "$item" was added successfully.');
      } else {
        print('Invalid input. Item not added.');
      }
    } else if (choose == 2) {
      // Remove an item from the list
      print('Enter the item:');
      String item = stdin.readLineSync()!;
      if (removeItem(items, item)) {
        print('The item "$item" was removed successfully.');
      } else {
        print('No item to remove or item not found.');
      }
    } else if (choose == 3) {
      // View the entire list
      viewItems(items);
    } else if (choose == 4) {
      // Search for an item in the list
      print('Enter the item:');
      String item = stdin.readLineSync()!;
      int? index = searchItem(items, item); // Store the search result
      if (index == null) {
        print('Item not found.');
      } else {
        print('The item "$item" is at index $index.');
      }
    } else if (choose == 5) {
      // View the list in uppercase format
      viewItems(items, isUppercase: true);
    } else if (choose == 6) {
      // Display the list without duplicate items
      print('Unique items: ${items.toSet()}');
    } else if (choose == 7) {
      // Exit the program
      break;
    } else {
      // Handle invalid menu option
      print('😊 Invalid input. Please try again. 😊');
    }
  }
}
