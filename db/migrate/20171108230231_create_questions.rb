class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :cantetiqueta
      t.string :titulo
      t.string :descripcion

      t.timestamps
    end
  end
end
