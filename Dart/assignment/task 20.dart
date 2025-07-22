import 'dart:io';

class Product
{
  String name;
  int price;

  Product(this.name, this.price);

  String displayItem()
  {
    return "$name - Rs.$price";
  }
}

class Cart
{
  List items = [];

  addProduct(var product)
  {
    items.add(product);
    print("${product.name} added to cart for Rs.${product.price}");
  }

  int calculateTotal()
  {
    int total = 0;
    for (var item in items)
    {
      total += (item as Product).price;
    }
    return total;
  }

  void showCart() {
    print("\nItems in your cart:");
    for (var item in items) {
      print("- ${item.displayItem()}");
    }
    print("Total: Rs.${calculateTotal()}\n");
  }
}

class Order {
  void placeOrder(Cart cart) {
    print("\nPlacing your order...");
    cart.showCart();
    print("Order placed successfully! Thank you for shopping.\n");
  }
}

void main() {
  Cart cart = Cart();

  while (true) {
    print(
        "\nChoose a product to add to your cart:\n"
            "1. ${Product("Thumbs-up", 40).displayItem()}\n"
            "2. ${Product("Sprite", 40).displayItem()}\n"
            "3. ${Product("Coca-Cola", 40).displayItem()}\n"
            "4. ${Product("Pizza", 240).displayItem()}\n"
            "5. ${Product("Cheese Balls", 220).displayItem()}\n"
            "6. ${Product("Burger", 120).displayItem()}\n"
            "0. Place Order and Exit"
    );

    int choice = int.parse(stdin.readLineSync().toString());

    switch (choice) {
      case 1:
        cart.addProduct(Product("Thumbs-up", 40));

      case 2:
        cart.addProduct(Product("Sprite", 40));

      case 3:
        cart.addProduct(Product("Coca-Cola", 40));

      case 4:
        cart.addProduct(Product("Pizza", 240));

      case 5:
        cart.addProduct(Product("Cheese Balls", 220));

      case 6:
        cart.addProduct(Product("Burger", 120));

      case 0:
        Order().placeOrder(cart);
        return;

      default:
        print("Invalid input. Try again.");
    }
  }
}
