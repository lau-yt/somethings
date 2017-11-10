class DeleteEmailAndPasswordFromUser < ActiveRecord::Migration[5.1]
  def change
  	remove_column :users, :mail
  	remove_column :users, :contraseña

  end
end
