class CreateHelps < ActiveRecord::Migration[5.1]
  def change
    create_table :helps do |t|
      t.string :titulo
      t.text :descripcion

      t.timestamps
    end
  end
end
