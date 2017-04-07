class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy

  def total
    sum = 0
    order_items.each do |item|
        sum+=(item.quantity*item.product.price)
    end
    sum
  end
end
