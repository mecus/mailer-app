class AddOrderidToOrder < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :oid, :string
    add_column :orders, :orderid, :string
  end
end
