class CreateCoffees < ActiveRecord::Migration[5.0]
  def change
    create_table :coffees do |t|
      t.string :name
      t.string :blend
      t.string :qty
      t.string :size
      t.string :roast
      t.string :price
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
