class Product < ApplicationRecord

  #Adding a validation for user price entry when creating a new form
  validates_numericality_of :price
  validates_numericality_of :stock, :only_integer => true, :greater_than_or_equal_to => 0
end
