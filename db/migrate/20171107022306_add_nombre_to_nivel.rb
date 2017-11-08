class AddNombreToNivel < ActiveRecord::Migration[5.1]
  def change
    add_column :nivels, :nombre, :string
  end
end
