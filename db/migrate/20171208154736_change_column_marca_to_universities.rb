class ChangeColumnMarcaToUniversities < ActiveRecord::Migration[5.1]
  def change
  	change_column :universities, :marca, :boolean, :default => false, :null => false
  end
end
