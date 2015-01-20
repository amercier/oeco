class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.integer :order

      t.timestamps null: false
    end
    add_index :properties, :name, unique: true
    add_index :properties, :order, unique: true
  end
end
