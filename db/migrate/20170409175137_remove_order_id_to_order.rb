class RemoveOrderIdToOrder < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :orderId, :string
  end
end
