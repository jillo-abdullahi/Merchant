class Product < ApplicationRecord

  #Adding a validation for user price entry when creating a new form
  validates_numericality_of :price
end
