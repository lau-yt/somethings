class AddColumnBestAnswerIdToQuestions < ActiveRecord::Migration[5.1]
  def change
  	add_column :questions, :best_answer_id, :integer
  end
end
