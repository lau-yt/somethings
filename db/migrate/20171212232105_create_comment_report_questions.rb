class CreateCommentReportQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :comment_report_questions do |t|
      t.string :titulo
      t.integer :comment_question_id

      t.timestamps
    end
  end
end
