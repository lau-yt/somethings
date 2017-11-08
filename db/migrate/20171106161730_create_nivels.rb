class CreateNivels < ActiveRecord::Migration[5.1]
  def change
    create_table :nivels do |t|
      t.integer :puntaje
      t.string :nombre
      t.timestamps
    end
  end
end
