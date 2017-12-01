class AddColumnLevelIdToUser < ActiveRecord::Migration[5.1]
  def change
	#add_column :users, :level_id, :integer
    add_column :users, :puntaje, :integer

  end
end
