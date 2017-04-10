class AddOrderIdToOrder < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :order_no, :string
    add_column :orders, :orderId, :string
  end
end
