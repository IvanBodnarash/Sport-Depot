class SPricingCalculator {
  static get productPrice => null;


  // Calculate Price based on tax and shipping
  static double calculateTotalPrice(double price, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // Calculate shipping cost
  static String calculateShippingCost(double price, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // Calculate tax rate based on location
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // Lookup the tax rate for the given location from a tax rate database or API
    // Return the appropriate tax rate
    return 0.10; // Example tax rate of 10%
  }

  static double getShippingCost(String location) {
    // Lookup the shipping cost for the given location from a shipping cost database or API
    // Calculate the shipping cost based on various factors like distance, weight, etc.
    return 5.83; // Example shipping cost
  }

  // Sum all cart values and return total amount
  // static double calculateTotalAmount() {
  //   return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}