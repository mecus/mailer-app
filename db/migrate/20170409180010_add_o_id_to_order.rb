class AddOIdToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :oId, :string
  end
end
