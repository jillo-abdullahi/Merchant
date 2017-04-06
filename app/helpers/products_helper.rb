module ProductsHelper

  def print_price(price)
    #Using the format method initially format("$%.2f", price)
    #Using Rail's built-in helper, number_to_currency
    number_to_currency price
  end
  def print_stock(stock)
    #Use content_tag to inject html
  if stock > 0
    content_tag(:span, "In Stock #{stock}", class: "in_stock")

  else
    content_tag(:span, "Out of Stock", class: "Out of Stock")
  end
end

end
