class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.string :telephone
      t.string :address
      t.string :postcode
      t.string :city
      t.string :country
      t.string :amount
      t.string :order_id
      t.string :status

      t.timestamps
    end
  end
end
