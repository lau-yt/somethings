class CreateEtiqueta < ActiveRecord::Migration[5.1]
  def change
    create_table :etiqueta do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
