class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.boolean :mejorrespuesta
      t.string :descripcion

      t.timestamps
    end
  end
end
