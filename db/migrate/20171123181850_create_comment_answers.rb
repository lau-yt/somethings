class CreateCommentAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :comment_answers do |t|
      t.string :descripcion
      t.integer :user_id
      t.integer :answer_id

      t.timestamps
    end
  end
end
