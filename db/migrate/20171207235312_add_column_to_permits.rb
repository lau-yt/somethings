class AddColumnToPermits < ActiveRecord::Migration[5.1]
  def change
  	add_column :permits, :create_question_answer, :integer
  end
end
