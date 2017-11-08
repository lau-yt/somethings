class CreatePregunta < ActiveRecord::Migration[5.1]
  def change
    create_table :pregunta do |t|
      t.integer :cantEtiqueta
      t.string :titulo
      t.text :descripcion

      t.timestamps
    end
  end
end
