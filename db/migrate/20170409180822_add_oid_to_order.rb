class AddOidToOrder < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :oId, :string
    add_column :orders, :oid, :string
  end
end
