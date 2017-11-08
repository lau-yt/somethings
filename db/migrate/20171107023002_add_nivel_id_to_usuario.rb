class AddNivelIdToUsuario < ActiveRecord::Migration[5.1]
  def change
    add_column :usuarios, :nivel_id, :integer
  end
end
