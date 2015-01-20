class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :url
      t.string :title
      t.string :summary
      t.string :content
      t.boolean :published

      t.timestamps null: false
    end
    add_index :projects, :url, unique: true
  end
end
