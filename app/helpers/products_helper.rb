module ProductsHelper

  def print_price(price)
    #Using the format method initially format("$%.2f", price)
    #Using Rail's built-in helper, number_to_currency
    number_to_currency price
  end
end
