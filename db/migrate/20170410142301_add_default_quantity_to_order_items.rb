class AddDefaultQuantityToOrderItems < ActiveRecord::Migration[5.0]
  def change
    change_column :order_items, :quantity, :integer, default: 0
  end
end
