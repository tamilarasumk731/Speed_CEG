class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.string :name, null: false
      t.string :contact_no, null: false
      t.string :latitude, null: false
      t.string :longitude, null: false
      t.text :address
      t.boolean :loc_type, default: false
      t.text :description, null: false
      t.integer :count
      t.boolean :is_rescued, default: false
      t.timestamps
    end
    add_index :maps, :name
    add_index :maps, :contact_no, unique: true
  end
end
