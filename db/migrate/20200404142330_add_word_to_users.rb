class AddWordToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :word, :text
  end
end
