class EPricingCalculator {
  ///Calculate price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;

  }

  ///Calculate Shipping Cost
  static String calculateShippingCost(double productPrice, String location){
    double shippngCost = getShippingCost(location);
    return shippngCost.toStringAsFixed(2);
  }

  ///Calculate Tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation (String location) {
    //lookup the tax rate for the given location from a tax rate data base or API
    //Return appropriate tax rate of 10%
    return 0.10;
  }

  static double getShippingCost(String location) {
    //lookup the the shipping cost for the givin location using a shipping rate API
    //Calculate the shipping cost based on various factors like distance, weight etc

    return 5.00; //example shipping cost of $5
  }

}