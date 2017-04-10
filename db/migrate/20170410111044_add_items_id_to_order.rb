class AddItemsIdToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :itemsid, :string
  end
end
