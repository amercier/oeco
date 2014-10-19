class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :url
      t.string :title
      t.string :summary
      t.integer :order

      t.timestamps null: false
    end
    add_index :news, :url, unique: true
    add_index :news, :order, unique: true
  end
end
