class CreateCommentQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :comment_questions do |t|
      t.string :descripcion
      t.integer :user_id
      t.integer :question_id

      t.timestamps
    end
  end
end
