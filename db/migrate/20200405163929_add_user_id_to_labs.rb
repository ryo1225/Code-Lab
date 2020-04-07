class AddUserIdToLabs < ActiveRecord::Migration[5.2]
  def change
    add_column :labs, :user_id, :integer
  end
end
