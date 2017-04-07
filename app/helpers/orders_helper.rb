module OrdersHelper
  def print_price(price)

    #Using Rail's built-in helper, number_to_currency
    number_to_currency price
  end
end
