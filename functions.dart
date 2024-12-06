// Adds an item to the grocery list if the input is valid
bool addItem(List<String> items, String item) {
  if (item == '') {
    return false; // Return false if the input is empty
  } else {
    items.add(item); // Add the item to the list
    return true; // Return true to indicate success
  }
}

// Searches for an item in the list and returns its index or null if not found
int? searchItem(List<String> items, String item) {
  for (int i = 0; i < items.length; i++) {
    if (items[i] == item) return i; // Return the index if the item is found
  }
  return null; // Return null if the item is not found
}

// Displays the items in the list, with an optional uppercase format
void viewItems(List<String> items, {bool isUppercase = false}) {
  if (items.isEmpty) {
    print('Empty list'); // Handle empty list case
  } else if (isUppercase) {
    print('Items: ${items.toString().toUpperCase()}'); // Display items in uppercase
  } else {
    print('Items: $items'); // Display items as-is
  }
}

// Removes an item from the list if it exists
bool removeItem(List<String> items, String item) {
  if (items.isEmpty || !items.contains(item)) {
    return false; // Return false if the list is empty or the item doesn't exist
  } else {
    items.remove(item); // Remove the item from the list
    return true; // Return true to indicate success
  }
}