class CreateLabs < ActiveRecord::Migration[5.2]
  def change
    create_table :labs do |t|

      t.string :title, null: false
      t.text :introduction, null: false
      t.integer :month, null: false
      t.integer :day, null: false
      t.integer :time, null:false
      t.string :region, null:false
      t.string :place, null:false
      t.integer :language, null:false
      t.integer :price, null:false
      t.integer :people, null:false
      t.string :image_id, null:false
      t.timestamps
    end
  end
end
