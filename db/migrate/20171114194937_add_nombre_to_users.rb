class AddNombreToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :nombre, :string
    add_column :users, :apellido, :string
    add_column :users, :university_id, :integer
    add_column :users, :level_id, :integer
  end
end
