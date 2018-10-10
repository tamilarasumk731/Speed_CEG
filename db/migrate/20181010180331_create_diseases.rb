class CreateDiseases < ActiveRecord::Migration[5.2]
  def change
    create_table :diseases do |t|
      t.string :name, null: false
      t.text :medicines, null: false
      t.text :symptoms, null: false
      t.text :prevention, null: false
      t.string :disease_type,null: false
      t.string :when, null: false

      t.timestamps
    end
    add_index :diseases, :name, unique: true
  end
end
