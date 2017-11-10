class CambioColumnaAgain < ActiveRecord::Migration[5.1]
  def change
  	rename_column :users, :nivel_id, :level_id
  end

  def self.up
    rename_column :users, :nivel_id, :level_id
  end
end
