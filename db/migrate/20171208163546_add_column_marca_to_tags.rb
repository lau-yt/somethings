class AddColumnMarcaToTags < ActiveRecord::Migration[5.1]
  def change
  	add_column :tags, :marca, :boolean, :default => false, :null => false
  end
end
