class CreatePermits < ActiveRecord::Migration[5.1]
  def change
    create_table :permits do |t|
      t.string :create_ans_ques
      t.string :integer
      t.integer :votes_pos
      t.integer :comment
      t.integer :votes_neg
      t.integer :adm_tag
      t.integer :adm_uni
      t.integer :modificar_contenido

      t.timestamps
    end
  end
end
