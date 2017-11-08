class AddFacultadIdToUsuario < ActiveRecord::Migration[5.1]
  def change
    add_column :usuarios, :facultad_id, :integer
  end
end
