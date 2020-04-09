class CreateLabComments < ActiveRecord::Migration[5.2]
  def change
    create_table :lab_comments do |t|
      t.text :comment
      t.integer :user_id
      t.integer :lab_id

      t.timestamps
    end
  end
end
