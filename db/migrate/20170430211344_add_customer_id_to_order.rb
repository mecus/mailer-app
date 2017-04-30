class AddCustomerIdToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :customerid, :string
  end
end
