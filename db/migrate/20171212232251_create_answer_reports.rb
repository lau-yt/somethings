class CreateAnswerReports < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_reports do |t|
      t.string :titulo
      t.integer :answer_id

      t.timestamps
    end
  end
end
