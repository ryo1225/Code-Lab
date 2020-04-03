class ChangeDatatypeLanguageOfLabs < ActiveRecord::Migration[5.2]
  def change
  	change_column :labs, :language, :string
  end
end
