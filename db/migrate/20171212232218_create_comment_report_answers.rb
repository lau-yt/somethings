class CreateCommentReportAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :comment_report_answers do |t|
      t.string :titulo
      t.integer :comment_answer_id

      t.timestamps
    end
  end
end
