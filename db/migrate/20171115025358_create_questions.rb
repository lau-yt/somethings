class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :Titulo
      t.text :descripcion
      t.integer :etiq1_id
      t.integer :etiq2_id
      t.integer :etiq3_id
      t.integer :etiq4_id
      t.integer :etiq5_id

      t.timestamps
    end
  end
end
