class AddOrderidToCoffee < ActiveRecord::Migration[5.0]
  def change
    remove_column :coffees, :order_id, :string
    add_column :coffees, :orderid, :string
  end
end
