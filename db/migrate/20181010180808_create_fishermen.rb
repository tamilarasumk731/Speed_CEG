class CreateFishermen < ActiveRecord::Migration[5.2]
  def change
    create_table :fishermen do |t|
      t.string  :name, null: false, length: 50
      t.integer :age
      t.string  :team_name, null: false, length: 50
      t.string  :contact_no, null: false
      t.text    :address, null: false
      t.boolean :is_fishing, default: false

      t.timestamps
    end
    add_index :fishermen, :name
    add_index :fishermen, :contact_no, unique: true
  end
end
