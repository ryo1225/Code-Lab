class AddLatitudeToLabs < ActiveRecord::Migration[5.2]
  def change
    add_column :labs, :latitude, :float
  end
end
