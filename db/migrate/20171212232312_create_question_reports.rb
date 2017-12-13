class CreateQuestionReports < ActiveRecord::Migration[5.1]
  def change
    create_table :question_reports do |t|
      t.string :titulo
      t.integer :question_id

      t.timestamps
    end
  end
end
