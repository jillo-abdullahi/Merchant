class OrderItem < ApplicationRecord

  belongs_to :order
  belongs_to :product

  validates :order_id, presence: true
  validates :product_id, presence: true

  def subtotal
      self.product.price*self.quantity
  end
end
