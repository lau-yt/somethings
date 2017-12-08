class AddcolumnUniversity < ActiveRecord::Migration[5.1]
  def change
  	add_column :universities, :marca, :boolean
  end
end
