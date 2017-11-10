class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.string :mail
      t.integer :cantpuntaje
      t.string :contraseña
      t.integer :facultad_id
      t.integer :nivel_id

      t.timestamps
    end
  end
end
