class RemoveEtiquetasFrom < ActiveRecord::Migration[5.1]
  def change
  	remove_column :questions, :etiq1_id
  	remove_column :questions, :etiq2_id
  	remove_column :questions, :etiq3_id
  	remove_column :questions, :etiq4_id
  	remove_column :questions, :etiq5_id
  end
end
