class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :mail
      t.integer :contPuntaje
      t.string :contr
      t.integer :facultad_id
      t.integer :nivel_id
      t.timestamps
    end
  end
end
