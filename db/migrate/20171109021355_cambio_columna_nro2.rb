class CambioColumnaNro2 < ActiveRecord::Migration[5.1]
  def change
  	rename_column :users, :facultad_id, :university_id
  end
end
