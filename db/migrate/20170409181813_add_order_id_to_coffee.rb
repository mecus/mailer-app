class AddOrderIdToCoffee < ActiveRecord::Migration[5.0]
  def change
    remove_column :coffees, :orderid, :string
    add_column :coffees, :order_id, :string
  end
end
