import 'dart:io';

void main() {
  Map<String, String> addressBook = {};

  while (true) {
    print("Address Book Menu:");
    print("1. Add Entry");
    print("2. Update Entry");
    print("3. Remove Entry");
    print("4. View All Entries");
    print("5. Exit\n");

    print("Choose an option: ");
    String choice = stdin.readLineSync().toString();

    switch (choice) {
      case '1':
        print("Enter name: ");
        String name = stdin.readLineSync().toString();
        print("Enter phone number: ");
        String phone = stdin.readLineSync().toString();
        addressBook[name] = phone;
        print("Entry added.");

      case '2':
        print("Enter name to update: ");
        String name = stdin.readLineSync().toString();
        if (addressBook.containsKey(name)) {
          print("Enter new phone number: ");
          String newPhone = stdin.readLineSync().toString();
          addressBook[name] = newPhone;
          print("Entry updated.");
        } else {
          print("Name not found.");
        }
        break;

      case '3':
        print("Enter name to remove: ");
        String name = stdin.readLineSync().toString();
        if (addressBook.remove(name) != null) {
          print("Entry removed.");
        } else {
          print("Name not found.");
        }
        break;

      case '4':
        print("Address Book Entries:");
        addressBook.forEach((name, phone) {
          print('$name: $phone');
        });
        break;

      case '5':
        print("Exiting...");
        return;

      default:
        print("Invalid option. Try again.");
    }
  }
}
