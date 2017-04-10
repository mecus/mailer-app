class AddOrderRefToCoffee < ActiveRecord::Migration[5.0]
  def change
    remove_column :coffees, :order_id, :string
    add_reference :coffees, :order, foreign_key: true
  end
end
