class ChangeColumnPuntajeToUsers < ActiveRecord::Migration[5.1]
  def change
  	change_column :users, :puntaje, :integer, :default => 1, :null => false
  end
end
