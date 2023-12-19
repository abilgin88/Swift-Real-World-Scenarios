import SwiftUI

// Define a Product struct that conforms to CustomStringConvertible
struct Product: CustomStringConvertible {
    var id: Int
    var name: String
    var price: Double
    var description: String {
        """
        Id: \(id)
        Name: \(name)
        Price: \(price)
        ---
        """
    }
}

// Define a ShoppingCartItem struct that conforms to CustomStringConvertible
struct ShoppingCartItem: CustomStringConvertible {
    var product: Product
    var quantity: Int
    var description: String {
        """
        *
        product: \(product)
        quantity: \(quantity)
        """
    }
}

// Define an Order struct
struct Order {
    var id: Int
    var items: [ShoppingCartItem]
    var orderDate: Date
}

// Define a User struct
struct User {
    var id: Int
    var username: String
    var email: String
    var shoppingCart: [ShoppingCartItem]
    var orderHistory: [Order]
}

// Create instances of Product
var iphone = Product(id: 1, name: "Iphone 13", price: 999.00)
var macbook = Product(id: 2, name: "MacBook Pro", price: 1999.99)

// Print the details of the products
print(iphone)
print(macbook)

// Create instances of ShoppingCartItem
var shoppingCartItem1 = ShoppingCartItem(product: iphone, quantity: 2)
var shoppingCartItem2 = ShoppingCartItem(product: macbook, quantity: 1)

// Print the details of the shopping cart items
print(shoppingCartItem1)
print(shoppingCartItem2)

// Create an instance of Order with shopping cart items and the current date
var order = Order(id: 101, items: [shoppingCartItem1, shoppingCartItem2], orderDate: Date())

// Create an instance of User with a shopping cart and order history
var user = User(id: 1, username: "abilgin", email: "abilgin@icloud.com", shoppingCart: [shoppingCartItem1], orderHistory: [order])

