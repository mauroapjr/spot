class CreateCreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :create_products do |t|
      t.string :label
      t.string :description
      t.string :image
      t.integer :quantity
      t.integer :price

      t.timestamps
    end
  end
end
