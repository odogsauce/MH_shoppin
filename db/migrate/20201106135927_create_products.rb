class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :photo
      t.string :size
      t.integer :quantity
      t.string :category

      t.timestamps
    end
  end
end
