class AddOrderNoToOrder < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :order_id, :string
    add_column :orders, :order_no, :string
  end
end
