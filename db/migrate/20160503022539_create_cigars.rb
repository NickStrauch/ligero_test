class CreateCigars < ActiveRecord::Migration
  def change
    create_table :cigars do |t|
      t.string :name
      t.string :manufacturer
      t.integer :price
      t.text :description

      t.timestamps null: false
    end
  end
end
