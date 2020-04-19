class AddLongitudeToLabs < ActiveRecord::Migration[5.2]
  def change
    add_column :labs, :longitude, :float
  end
end
