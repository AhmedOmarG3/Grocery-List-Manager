Grocery List Manager

Description

This project implements a Grocery List Manager using Dart. The program allows users to manage a list of grocery items by performing the following actions:

Add items to the list.

Remove items from the list.

View the entire list.

Search for specific items.

View the list in uppercase.

Remove duplicate items.


Features

Add, remove, and search for items.

Display items in uppercase or in the original format.

Handle an empty list gracefully.

Display the list without duplicates.

Null safety implementation to ensure that missing or non-existent items are handled properly.


Key Concepts

Lists: To store and manipulate grocery items.

Functions: Separate functions to handle adding, removing, and searching items.

Null Safety: Ensures safe handling of null values when searching for non-existing items.

Named Parameters: For optional formatting when displaying the list (e.g., displaying in uppercase).


Requirements

Before running the program, make sure you have Dart installed on your machine.

You can download Dart from here.

Usage

1. Clone the repository

git clone https://github.com/yourusername/grocery-list-manager.git
cd grocery-list-manager

2. Run the program

After cloning the repository and navigating to the project folder, open a terminal/command prompt and run the program using Dart:

dart run main.dart

3. Menu options

The program will display the following menu options:

1. Add Item
2. Remove Item
3. View List
4. Search for Item
5. View in Uppercase
6. List without repetition
7. Exit

Option 1: Adds an item to the grocery list.

Option 2: Removes an item from the list.

Option 3: Displays the list of items.

Option 4: Searches for a specific item by name.

Option 5: Displays the list in uppercase.

Option 6: Displays the list without duplicates (using a Set).

Option 7: Exits the program.


Example Interaction

================> Grocery List Manager <==============
○ 1. Add Item
○ 2. Remove Item
○ 3. View List
○ 4. Search for Item
○ 5. View in Uppercase
○ 6. List without repetition
○ 7. Exit
Enter your choice: 1
Enter the item: Apples
The item "Apples" was added successfully.

Enter your choice: 3
Items: [Apples, Bananas, Milk]

Error Handling

If you try to remove or search for an item that does not exist in the list, an appropriate error message will be shown.

If the list is empty and you try to view or remove an item, it will handle that case gracefully.


Code Structure

Functions

addItem(List<String> items, String item): Adds an item to the list and returns a boolean indicating whether the operation was successful.

removeItem(List<String> items, String item): Removes an item from the list and returns a boolean indicating success.

viewItems(List<String> items, {bool isUppercase = false}): Displays the list of items, with an optional parameter to display items in uppercase.

searchItem(List<String> items, String item): Searches for an item in the list and returns its index or null if not found.


Main Program Flow

The main program loop provides a user interface for interacting with the list. It displays a menu and waits for the user to choose an option. The program continues to run until the user chooses to exit.

License

This project is open-source and available under the MIT License. See the LICENSE file for more information.
